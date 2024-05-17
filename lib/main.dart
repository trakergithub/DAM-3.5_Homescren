import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAM!', // Nombre de la aplicación
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Contenedor para superponer elementos
        children: <Widget>[
          // Imagen de fondo
          Image.asset(
            'assets/img/background.jpg', // Ruta de la imagen
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del dispositivo
            height: double.infinity, // Expandir la imagen a todo el alto
            width: double.infinity, // Expandir la imagen a todo el alto
          ),
          Center(
            // Centrar el contenido
            child: Column(
              // Agrupar en vertical
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centrar verticalmente
              children: <Widget>[
                // Mensaje de bienvenida
                Text(
                  '¡Bienvenido a DAM!', // Texto del mensaje
                  style: TextStyle(
                      fontSize: 32, color: Colors.white), // Estilo del texto
                ),
                SizedBox(height: 20), // Espacio entre widgets
                Text(
                  'mi app creada en flutter para SUV - LDSW - DAM', // Subtítulo
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70), // Estilo del subtítulo
                ),
                Text(
                  'Francisco Javier Trujillo Pedroza', // Subtítulo
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70), // Estilo del subtítulo
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
