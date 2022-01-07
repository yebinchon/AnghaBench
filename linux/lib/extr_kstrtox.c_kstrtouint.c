
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int kstrtoull (char const*,unsigned int,unsigned long long*) ;

int kstrtouint(const char *s, unsigned int base, unsigned int *res)
{
 unsigned long long tmp;
 int rv;

 rv = kstrtoull(s, base, &tmp);
 if (rv < 0)
  return rv;
 if (tmp != (unsigned int)tmp)
  return -ERANGE;
 *res = tmp;
 return 0;
}
