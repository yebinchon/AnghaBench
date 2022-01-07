
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long simple_strtoull (char const*,char**,unsigned int) ;

long long simple_strtoll(const char *cp, char **endp, unsigned int base)
{
 if (*cp == '-')
  return -simple_strtoull(cp + 1, endp, base);

 return simple_strtoull(cp, endp, base);
}
