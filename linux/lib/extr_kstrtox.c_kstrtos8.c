
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long s8 ;


 int ERANGE ;
 int kstrtoll (char const*,unsigned int,long long*) ;

int kstrtos8(const char *s, unsigned int base, s8 *res)
{
 long long tmp;
 int rv;

 rv = kstrtoll(s, base, &tmp);
 if (rv < 0)
  return rv;
 if (tmp != (s8)tmp)
  return -ERANGE;
 *res = tmp;
 return 0;
}
