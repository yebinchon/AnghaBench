
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex_byte_pack (char*,int ) ;

void qword_addhex(char **bpp, int *lp, char *buf, int blen)
{
 char *bp = *bpp;
 int len = *lp;

 if (len < 0) return;

 if (len > 2) {
  *bp++ = '\\';
  *bp++ = 'x';
  len -= 2;
  while (blen && len >= 2) {
   bp = hex_byte_pack(bp, *buf++);
   len -= 2;
   blen--;
  }
 }
 if (blen || len<1) len = -1;
 else {
  *bp++ = ' ';
  len--;
 }
 *bpp = bp;
 *lp = len;
}
