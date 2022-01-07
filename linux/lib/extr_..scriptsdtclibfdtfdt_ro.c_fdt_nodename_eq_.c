
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_get_name (void const*,int,int*) ;
 int memchr (char const*,char,int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;

__attribute__((used)) static int fdt_nodename_eq_(const void *fdt, int offset,
       const char *s, int len)
{
 int olen;
 const char *p = fdt_get_name(fdt, offset, &olen);

 if (!p || olen < len)

  return 0;

 if (memcmp(p, s, len) != 0)
  return 0;

 if (p[len] == '\0')
  return 1;
 else if (!memchr(s, '@', len) && (p[len] == '@'))
  return 1;
 else
  return 0;
}
