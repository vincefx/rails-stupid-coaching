class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @input = params[:answer]
    if @input == 'I am going to work'
      @coachanswer = 'Great!'
    elsif @input[-1] == '?'
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
