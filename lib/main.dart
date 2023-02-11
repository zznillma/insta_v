import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstaScreen(),
    );
  }
}

class InstaScreen extends StatelessWidget {
  const InstaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset('assets/images/Shape.png'),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset('assets/images/IGTV.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset('assets/images/mess.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 98,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  color: Colors.grey,
                  offset: Offset(
                    0,
                    0.33,
                  ),
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              right: 20,
                            ),
                            height: 62,
                            width: 62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Image.asset('assets/images/imagess.png'),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              right: 15,
                            ),
                            child: Text('Your Story'),
                          )
                        ],
                      ),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.blue[100],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 11,
                            ),
                            child: Image.asset('assets/images/imagess.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'joshua_l',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: SizedBox(
                                      height: 10,
                                      width: 10,
                                      child: Image.asset('assets/images/ofc.png'),
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                'Tokyo, Japan',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 3,
                            width: 50,
                            child: Image.asset('assets/images/dots.png'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/images/pic.png'),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 147,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 16,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 9),
                              height: 20,
                              width: 30,
                              child: Image.asset('assets/images/Like.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 9),
                              height: 20,
                              width: 30,
                              child: Image.asset('assets/images/Comment.png'),
                            ),
                            Container(
                              height: 20,
                              width: 30,
                              child: Image.asset('assets/images/mess.png'),
                            ),
                            const Spacer(),
                            Container(
                              height: 20,
                              width: 30,
                              child: Image.asset('assets/images/Save.png'),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset('assets/images/imagess.png'),
                          ),
                          Container(width: 6),
                          const Text('Liked by'),
                          Container(width: 2),
                          const Text(
                            'craig_love',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(width: 2),
                          const Text('and'),
                          Container(width: 2),
                          const Text(
                            '44,686 others',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(height: 6),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'joshua_l The game in Japan was amazing and I want to share some photos',
                            ),
                          ),
                        ],
                      ),
                      Container(height: 13),
                      Row(
                        children: const [
                          Text(
                            'September 19',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column StoryCard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, right: 20),
          height: 62,
          width: 62,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 2, color: Colors.red),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Image.asset('assets/images/imagess.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5, right: 15),
          child: Text('Unknown'),
        )
      ],
    );
  }
}
