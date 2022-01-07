
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static void append_nibble_mask(char **outp,
          unsigned int nibble, unsigned int mask)
{
 char *p = *outp;
 unsigned int i;

 switch (mask) {
 case 0:
  *p++ = '?';
  break;

 case 0xf:
  p += sprintf(p, "%X", nibble);
  break;

 default:






  *p++ = '[';
  for (i = 0; i < 0x10; i++)
   if ((i & mask) == nibble)
    p += sprintf(p, "%X", i);
  *p++ = ']';
 }


 *p = '\0';


 *outp = p;
}
