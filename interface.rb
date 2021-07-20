require_relative 'christmas_list'
require 'csv'
require 'open-uri'
require 'nokogiri'

# 1. mensagem de boas vindas

puts '*' * 50
puts 'Seja bem vindo'
puts '*' * 50

itens = []

# 2. mostrar o menu
# acao para sair
# acao que nao consta na lista

# 3. pegar a acao escolhida pelo usuario
loop do
  puts "\n"
  puts 'O que deseja fazer? ( listar/adicionar/deletar/marcar/sair )'
  escolha = gets.chomp

  case escolha
  when 'listar'
    puts "\n"
    if itens.empty?
      puts 'nenhum item adicionado'
    else
      puts 'Lista de presentes'
      itens.each_with_index do |item, index|
        puts "#{index + 1} - #{item[:presente]} para #{item[:nome]} (valor: R$ #{item[:preco]})"
      end
    end
  when 'adicionar'
    # presente, nome, preco
    puts "\n"
    puts 'Qual presente deseja adicionar?'
    presente = gets.chomp
    puts "Para quem é o item: #{presente}?"
    nome = gets.chomp
    puts 'Qual e o valor?'
    preco = gets.chomp
    itens << { presente: presente, nome: nome, preco: preco }
    puts "O item '#{presente}' para '#{nome}' foi adicionado!"
  when 'deletar'
    puts 'O item foi deletado'
  when 'marcar'
    puts 'O item foi marcado'
  when 'sair'
    puts '*' * 50
    puts 'Obrigado pelas compras.'
    puts '*' * 50
  else
    puts 'Opção inválida'
  end
  break if escolha == 'sair'
end

# 3.1 listar itens
# 3.2 adicionar item
# 3.3 deletar item
# 3.4 marcar item como comprado

# 4. executar a acao

# 5. verificar se o usuario quer realizar outra acao ou sair

# 6. caso saia, uma mensagem de despedida
