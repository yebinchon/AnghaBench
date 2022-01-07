
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int ESCAPE_HEX ;
 int WARN_ON (int) ;
 char* kmalloc (size_t,int ) ;
 size_t string_escape_mem (char const*,size_t,char*,size_t,int const,char const*) ;
 size_t strlen (char const*) ;

char *kstrdup_quotable(const char *src, gfp_t gfp)
{
 size_t slen, dlen;
 char *dst;
 const int flags = ESCAPE_HEX;
 const char esc[] = "\f\n\r\t\v\a\e\\\"";

 if (!src)
  return ((void*)0);
 slen = strlen(src);

 dlen = string_escape_mem(src, slen, ((void*)0), 0, flags, esc);
 dst = kmalloc(dlen + 1, gfp);
 if (!dst)
  return ((void*)0);

 WARN_ON(string_escape_mem(src, slen, dst, dlen, flags, esc) != dlen);
 dst[dlen] = '\0';

 return dst;
}
