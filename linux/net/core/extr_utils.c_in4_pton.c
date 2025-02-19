
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int dbuf ;


 int IN6PTON_COLON_MASK ;
 int IN6PTON_DELIM ;
 int IN6PTON_DIGIT ;
 int IN6PTON_DOT ;
 int memcpy (int *,int *,int) ;
 int strlen (char const*) ;
 int xdigit2bin (char const,int) ;

int in4_pton(const char *src, int srclen,
      u8 *dst,
      int delim, const char **end)
{
 const char *s;
 u8 *d;
 u8 dbuf[4];
 int ret = 0;
 int i;
 int w = 0;

 if (srclen < 0)
  srclen = strlen(src);
 s = src;
 d = dbuf;
 i = 0;
 while (1) {
  int c;
  c = xdigit2bin(srclen > 0 ? *s : '\0', delim);
  if (!(c & (IN6PTON_DIGIT | IN6PTON_DOT | IN6PTON_DELIM | IN6PTON_COLON_MASK))) {
   goto out;
  }
  if (c & (IN6PTON_DOT | IN6PTON_DELIM | IN6PTON_COLON_MASK)) {
   if (w == 0)
    goto out;
   *d++ = w & 0xff;
   w = 0;
   i++;
   if (c & (IN6PTON_DELIM | IN6PTON_COLON_MASK)) {
    if (i != 4)
     goto out;
    break;
   }
   goto cont;
  }
  w = (w * 10) + c;
  if ((w & 0xffff) > 255) {
   goto out;
  }
cont:
  if (i >= 4)
   goto out;
  s++;
  srclen--;
 }
 ret = 1;
 memcpy(dst, dbuf, sizeof(dbuf));
out:
 if (end)
  *end = s;
 return ret;
}
