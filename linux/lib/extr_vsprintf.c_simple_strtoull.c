
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KSTRTOX_OVERFLOW ;
 unsigned int _parse_integer (char const*,unsigned int,unsigned long long*) ;
 char* _parse_integer_fixup_radix (char const*,unsigned int*) ;

unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int base)
{
 unsigned long long result;
 unsigned int rv;

 cp = _parse_integer_fixup_radix(cp, &base);
 rv = _parse_integer(cp, base, &result);

 cp += (rv & ~KSTRTOX_OVERFLOW);

 if (endp)
  *endp = (char *)cp;

 return result;
}
