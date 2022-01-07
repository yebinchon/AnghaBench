
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ESCAPE_HEX ;
 unsigned int ESCAPE_NP ;
 unsigned int ESCAPE_NULL ;
 unsigned int ESCAPE_OCTAL ;
 unsigned int ESCAPE_SPACE ;
 unsigned int ESCAPE_SPECIAL ;
 scalar_t__ escape_hex (unsigned char,char**,char*) ;
 scalar_t__ escape_null (unsigned char,char**,char*) ;
 scalar_t__ escape_octal (unsigned char,char**,char*) ;
 int escape_passthrough (unsigned char,char**,char*) ;
 scalar_t__ escape_space (unsigned char,char**,char*) ;
 scalar_t__ escape_special (unsigned char,char**,char*) ;
 scalar_t__ isprint (unsigned char) ;
 int strchr (char const*,unsigned char) ;

int string_escape_mem(const char *src, size_t isz, char *dst, size_t osz,
        unsigned int flags, const char *only)
{
 char *p = dst;
 char *end = p + osz;
 bool is_dict = only && *only;

 while (isz--) {
  unsigned char c = *src++;
  if ((flags & ESCAPE_NP && isprint(c)) ||
      (is_dict && !strchr(only, c))) {

  } else {
   if (flags & ESCAPE_SPACE && escape_space(c, &p, end))
    continue;

   if (flags & ESCAPE_SPECIAL && escape_special(c, &p, end))
    continue;

   if (flags & ESCAPE_NULL && escape_null(c, &p, end))
    continue;


   if (flags & ESCAPE_OCTAL && escape_octal(c, &p, end))
    continue;

   if (flags & ESCAPE_HEX && escape_hex(c, &p, end))
    continue;
  }

  escape_passthrough(c, &p, end);
 }

 return p - dst;
}
