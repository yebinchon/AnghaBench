
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BITS_PER_BYTE ;

__attribute__((used)) static unsigned long __reverse_ulong(unsigned char *str)
{
 unsigned long tmp = 0;
 int shift = 24, idx = 0;




 while (shift >= 0) {
  tmp |= (unsigned long)str[idx++] << shift;
  shift -= BITS_PER_BYTE;
 }
 return tmp;
}
