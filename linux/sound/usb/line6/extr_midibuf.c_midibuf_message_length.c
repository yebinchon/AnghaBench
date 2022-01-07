
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int midibuf_message_length(unsigned char code)
{
 int message_length;

 if (code < 0x80)
  message_length = -1;
 else if (code < 0xf0) {
  static const int length[] = { 3, 3, 3, 3, 2, 2, 3 };

  message_length = length[(code >> 4) - 8];
 } else {





  static const int length[] = { -1, 2, -1, 2, -1, -1, 1, 1, 1, 1,
   1, 1, 1, -1, 1, 1
  };
  message_length = length[code & 0x0f];
 }

 return message_length;
}
