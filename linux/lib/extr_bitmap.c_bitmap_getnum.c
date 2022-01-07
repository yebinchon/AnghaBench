
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EOVERFLOW ;
 char const* ERR_PTR (int ) ;
 unsigned int KSTRTOX_OVERFLOW ;
 unsigned int _parse_integer (char const*,int,unsigned long long*) ;

__attribute__((used)) static const char *bitmap_getnum(const char *str, unsigned int *num)
{
 unsigned long long n;
 unsigned int len;

 len = _parse_integer(str, 10, &n);
 if (!len)
  return ERR_PTR(-EINVAL);
 if (len & KSTRTOX_OVERFLOW || n != (unsigned int)n)
  return ERR_PTR(-EOVERFLOW);

 *num = n;
 return str + len;
}
