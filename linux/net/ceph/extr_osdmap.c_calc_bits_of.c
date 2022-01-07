
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_bits_of(unsigned int t)
{
 int b = 0;
 while (t) {
  t = t >> 1;
  b++;
 }
 return b;
}
