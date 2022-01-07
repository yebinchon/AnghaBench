
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u8 ;


 int ERANGE ;
 int kstrtoull (char const*,unsigned int,unsigned long long*) ;

int kstrtou8(const char *s, unsigned int base, u8 *res)
{
 unsigned long long tmp;
 int rv;

 rv = kstrtoull(s, base, &tmp);
 if (rv < 0)
  return rv;
 if (tmp != (u8)tmp)
  return -ERANGE;
 *res = tmp;
 return 0;
}
