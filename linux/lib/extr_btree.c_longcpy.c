
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long *longcpy(unsigned long *dest, const unsigned long *src,
  size_t n)
{
 size_t i;

 for (i = 0; i < n; i++)
  dest[i] = src[i];
 return dest;
}
