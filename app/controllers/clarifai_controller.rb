class ClarifaiController < ApplicationController
    def index

        tag_response = ClarifaiRuby::TagRequest.new.get("http://images.wisegeek.com/group-of-fruit-including-bananas-oranges-and-apples.jpg")
        # , model: "nsfw-v0.1"
        #=> #<ClarifaiRuby::TagResponse>
        puts tag_response.tag_images.first.tags.to_json, "testing"
        # puts tag_response.to_json

        # image = open(imageUrl)
        # tag_response.tag_images
        #=> [#<ClarifaiRuby::TagImage>]

        # Each tag image will contain an array of Tag objects
        # tag_response.tag_images.first.tags
        #=> [#<ClarifaiRuby::Tag>, #<ClarifaiRuby::Tag>, ...]
end
end
