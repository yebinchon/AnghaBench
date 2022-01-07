
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCAPE_OCTAL ;
 int string_escape_str (char*,char*,int,int ,char*) ;

void qword_add(char **bpp, int *lp, char *str)
{
 char *bp = *bpp;
 int len = *lp;
 int ret;

 if (len < 0) return;

 ret = string_escape_str(str, bp, len, ESCAPE_OCTAL, "\\ \n\t");
 if (ret >= len) {
  bp += len;
  len = -1;
 } else {
  bp += ret;
  len -= ret;
  *bp++ = ' ';
  len--;
 }
 *bpp = bp;
 *lp = len;
}
