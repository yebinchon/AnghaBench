
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 unsigned int KSTRTOX_OVERFLOW ;
 unsigned int _parse_integer (char const*,unsigned int,unsigned long long*) ;
 char* _parse_integer_fixup_radix (char const*,unsigned int*) ;

__attribute__((used)) static int _kstrtoull(const char *s, unsigned int base, unsigned long long *res)
{
 unsigned long long _res;
 unsigned int rv;

 s = _parse_integer_fixup_radix(s, &base);
 rv = _parse_integer(s, base, &_res);
 if (rv & KSTRTOX_OVERFLOW)
  return -ERANGE;
 if (rv == 0)
  return -EINVAL;
 s += rv;
 if (*s == '\n')
  s++;
 if (*s)
  return -EINVAL;
 *res = _res;
 return 0;
}
