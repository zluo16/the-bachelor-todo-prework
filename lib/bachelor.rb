require "pry"

def get_first_name_of_season_winner(data, season)
  season = data[season]
  i = 0
  while i < season.length
    if season[i]["status"] == "Winner"
      return season[i]["name"].split(" ")[0]
    else
      i += 1
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  town_count = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        town_count += 1
      end
    end
  end
  town_count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  season = data[season]
  added_age = 0
  season.each{ |contestant| added_age += contestant["age"].to_f }
  average = added_age / season.length
  average.round
end
