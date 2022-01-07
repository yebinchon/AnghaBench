
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int gfmul (int,int) ;

__attribute__((used)) static uint8_t gfpow(uint8_t a, int b)
{
 uint8_t v = 1;

 b %= 255;
 if (b < 0)
  b += 255;

 while (b) {
  if (b & 1)
   v = gfmul(v, a);
  a = gfmul(a, a);
  b >>= 1;
 }

 return v;
}
