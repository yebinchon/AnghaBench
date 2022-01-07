
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 yura_hash(const signed char *msg, int len)
{
 int j, pow;
 u32 a, c;
 int i;

 for (pow = 1, i = 1; i < len; i++)
  pow = pow * 10;

 if (len == 1)
  a = msg[0] - 48;
 else
  a = (msg[0] - 48) * pow;

 for (i = 1; i < len; i++) {
  c = msg[i] - 48;
  for (pow = 1, j = i; j < len - 1; j++)
   pow = pow * 10;
  a = a + c * pow;
 }

 for (; i < 40; i++) {
  c = '0' - 48;
  for (pow = 1, j = i; j < len - 1; j++)
   pow = pow * 10;
  a = a + c * pow;
 }

 for (; i < 256; i++) {
  c = i;
  for (pow = 1, j = i; j < len - 1; j++)
   pow = pow * 10;
  a = a + c * pow;
 }

 a = a << 7;
 return a;
}
