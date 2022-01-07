
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int escape_hex (unsigned char,char**,char*) ;
 int escape_passthrough (unsigned char,char**,char*) ;
 int isascii (unsigned char) ;
 int isprint (unsigned char) ;

int string_escape_mem_ascii(const char *src, size_t isz, char *dst,
     size_t osz)
{
 char *p = dst;
 char *end = p + osz;

 while (isz--) {
  unsigned char c = *src++;

  if (!isprint(c) || !isascii(c) || c == '"' || c == '\\')
   escape_hex(c, &p, end);
  else
   escape_passthrough(c, &p, end);
 }

 return p - dst;
}
