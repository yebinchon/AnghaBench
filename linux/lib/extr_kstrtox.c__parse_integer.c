
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KSTRTOX_OVERFLOW ;
 scalar_t__ ULLONG_MAX ;
 unsigned long long div_u64 (scalar_t__,unsigned int) ;
 scalar_t__ unlikely (unsigned long long) ;

unsigned int _parse_integer(const char *s, unsigned int base, unsigned long long *p)
{
 unsigned long long res;
 unsigned int rv;

 res = 0;
 rv = 0;
 while (1) {
  unsigned int c = *s;
  unsigned int lc = c | 0x20;
  unsigned int val;

  if ('0' <= c && c <= '9')
   val = c - '0';
  else if ('a' <= lc && lc <= 'f')
   val = lc - 'a' + 10;
  else
   break;

  if (val >= base)
   break;




  if (unlikely(res & (~0ull << 60))) {
   if (res > div_u64(ULLONG_MAX - val, base))
    rv |= KSTRTOX_OVERFLOW;
  }
  res = res * base + val;
  rv++;
  s++;
 }
 *p = res;
 return rv;
}
