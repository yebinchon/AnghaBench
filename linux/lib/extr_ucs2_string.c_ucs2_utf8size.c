
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs2_char_t ;
typedef int u16 ;



unsigned long
ucs2_utf8size(const ucs2_char_t *src)
{
 unsigned long i;
 unsigned long j = 0;

 for (i = 0; src[i]; i++) {
  u16 c = src[i];

  if (c >= 0x800)
   j += 3;
  else if (c >= 0x80)
   j += 2;
  else
   j += 1;
 }

 return j;
}
