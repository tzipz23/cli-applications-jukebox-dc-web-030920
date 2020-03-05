def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def list(songs)
  new = []
  songs.each_with_index do |s,i|
    n = i.to_i + 1
    new << n.to_s + ". " + s
  end
  puts new
  new
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.chomp
  str = list(songs).join(" ")
  if str.include?(user)
    puts "Playing " + user
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end

