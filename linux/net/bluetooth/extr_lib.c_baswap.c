
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bdaddr_t ;



void baswap(bdaddr_t *dst, const bdaddr_t *src)
{
 const unsigned char *s = (const unsigned char *)src;
 unsigned char *d = (unsigned char *)dst;
 unsigned int i;

 for (i = 0; i < 6; i++)
  d[i] = s[5 - i];
}
