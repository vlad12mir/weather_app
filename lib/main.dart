import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

void main() => runApp(Weather());

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrange,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.deepOrange,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Weather'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            _search(),
            _areaName(),
            _mainInfo(),
            Divider(),
            _detailInfo(),
            Divider(),
            const Text('7-DAY WEATHER FORECAST'),
            OnWeek(),
          ],
        ),
      ),
    );
  }
}

Widget _search() {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
    child: Row(
      children: const [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Enter City Name',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget _areaName() {
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: Column(
      children: const [
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(fontSize: 17),
        ),
      ],
    ),
  );
}

Widget _mainInfo() {
  return Padding(
    padding: const EdgeInsets.only(top: 45),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.wb_sunny_sharp,
          size: 55,
          color: Colors.white,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          children: const [
            Text(
              '14 °F',
              style: TextStyle(fontSize: 48),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _detailInfo() {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 35),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(
              WeatherIcons.windy,
              color: Colors.white,
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '5',
              style: TextStyle(fontSize: 30),
            ),
            Text('km/hr'),
          ],
        ),
        Column(
          children: [
            Icon(
              WeatherIcons.humidity,
              color: Colors.white,
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '3',
              style: TextStyle(fontSize: 30),
            ),
            Text('%'),
          ],
        ),
        Column(
          children: [
            Icon(
              WeatherIcons.snow_wind,
              color: Colors.white,
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '7',
              style: TextStyle(fontSize: 30),
            ),
            Text('km/hr'),
          ],
        ),
      ],
    ),
  );
}

class OnWeek extends StatefulWidget {
  @override
  _OnWeekState createState() => _OnWeekState();
}

class _OnWeekState extends State<OnWeek> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 4),
            child: Column(
              children: [
                const Text(
                  'Friday',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '14 °F',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 4),
            child: Column(
              children: [
                const Text(
                  'Saturday',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '3 °F',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 4),
            child: Column(
              children: [
                const Text(
                  'Sunday',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '7 °F',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 4),
            child: Column(
              children: [
                const Text(
                  'Monday',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '2 °F',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white12,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 4),
            child: Column(
              children: [
                const Text(
                  'Tuesday',
                  style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '11 °F',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
