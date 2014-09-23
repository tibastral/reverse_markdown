module ReverseMarkdown
  module Converters
    class Img < Base
      def convert(node)
        alt   = node['alt']
        src   = node['src']
        title = extract_title(node)
        " ![#{alt}](#{File.join('https://s3-eu-west-1.amazonaws.com/babeldoor-eu/', src)}#{title})"
      end
    end

    register :img, Img.new
  end
end
