class Song
attr_accessor :name, :artist

def initialize(name)
  @name= name
end

def artist_name(name)
  @name = add_song(name)
  song.name = Artist.find_or_create_by_name(name)
end

def self.new_by_filename(filename)

  artist = filename.split(" - ")[0]
  name = filename.split(" - ")[1]
  song = Song.new(name)
  song.artist = Artist.new(artist)
  song

end


end
