import 'media.dart';

class PopularSeries extends Media {
  final String originalName;
  final String releaseDate;
  final List<String> originCountry;

  PopularSeries({
    required this.originalName,
    required this.releaseDate,
    required this.originCountry,
    super.title = '',
    super.posterPath = '',
    super.adult,
    super.backdropPath,
    super.genreIds,
    super.originalLanguage,
    super.overview,
    super.popularity,
    super.voteAverage,
    super.voteCount, required super.id,
  });

  factory PopularSeries.fromJson(Map<String, dynamic> json) {
    return PopularSeries(
      id: json["id"],
      originalName: json['original_name'] ?? '',
      releaseDate: json['first_air_date'] ?? '',
      originCountry: List<String>.from(json['origin_country'] ?? []),
      title: json['original_name'] ?? '',
      posterPath: json['poster_path'] ?? '',
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'] ?? '',
      genreIds: List<int>.from(json['genre_ids'] ?? []),
      originalLanguage: json['original_language'] ?? '',
      overview: json['overview'] ?? '',
      popularity: json['popularity']?.toDouble() ?? 0.0,
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] ?? 0,
    );
  }
}