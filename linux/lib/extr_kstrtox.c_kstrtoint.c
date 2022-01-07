
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int kstrtoll (char const*,unsigned int,long long*) ;

int kstrtoint(const char *s, unsigned int base, int *res)
{
 long long tmp;
 int rv;

 rv = kstrtoll(s, base, &tmp);
 if (rv < 0)
  return rv;
 if (tmp != (int)tmp)
  return -ERANGE;
 *res = tmp;
 return 0;
}
