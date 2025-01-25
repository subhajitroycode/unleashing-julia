function word_count(sentence)
    # normalize the text
    words = split(lowercase(sentence))

    #count occurrences
    word_counts = Dict()
    for word in words
        word_counts[word] = get(word_counts, word, 0) + 1
    end

    return word_counts
end

function print_word_count(word_counts)
    for key in keys(word_counts)
        println("$(key) => $(word_counts[key])")
    end
end

text = ARGS[1]
counts = word_count(text)
print_word_count(counts)