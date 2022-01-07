
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_get_string (void const*,int,int*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;

__attribute__((used)) static int fdt_string_eq_(const void *fdt, int stroffset,
     const char *s, int len)
{
 int slen;
 const char *p = fdt_get_string(fdt, stroffset, &slen);

 return p && (slen == len) && (memcmp(p, s, len) == 0);
}
