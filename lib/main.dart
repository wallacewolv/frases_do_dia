import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Imagine uma nova história para sua vida e acredite nela.",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência.",
    "Você precisa fazer aquilo que pensa que não é capaz de fazer.",
    "Lute com determinação, abrace a vida com paixão, perca com classe e vença com ousadia, porque o mundo pertence a quem se atreve e a vida é muito para ser insignificante.",
    "Antes de você falar, ouça. Antes de agir, pense. Antes de criticar, conheça. E antes de desistir, tente.",
    "Nunca mude seu jeito de ser pra satisfazer as pessoas que você gosta. Pois quem gosta de você não te muda e sim te completa.",
    "Cada vez que você é honesto e conduz a si próprio com honestidade, uma força de prosperidade impulsionará você em direção a um grande sucesso.",
    "Faça o que for necessário para ser feliz. Mas não se esqueça que a felicidade é um sentimento simples, você pode encontrá-la e deixá-la ir embora por não perceber sua simplicidade.",
    "Acredite em si mesmo em qualquer circunstância, pois você é o principal responsável pela sua felicidade.",
    "Os melhores momentos na vida são como os arcos-íris: aparecem quando você menos espera.",
    "Comece fazendo o que é necessário, depois o que é possível, e de repente você estará fazendo o impossível.",
    "A vida pode ser dura e difícil, mas com fé em Deus todo mal desvanece, perde força, desaparece."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {

    var numeroSorteado = Random().nextInt(_frases.length) ;

    setState(() {

      _fraseGerada = _frases[numeroSorteado];

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Frases do dia",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 255, 0, 1),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // width: double.infinity,
          /*decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo1.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Color.fromRGBO(0, 255, 0, 1),
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
