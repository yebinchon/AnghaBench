
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int hex_to_bin (unsigned char) ;

__attribute__((used)) static u32 atoh(const unsigned char *in, unsigned int len)
{
 u32 sum = 0;
 unsigned int mult = 1;
 unsigned char c;

 while (len) {
  int value;

  c = in[len - 1];
  value = hex_to_bin(c);
  if (value >= 0)
   sum += mult * value;
  mult *= 16;
  --len;
 }
 return sum;
}
