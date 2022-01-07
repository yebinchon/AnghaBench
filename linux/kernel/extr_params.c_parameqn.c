
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dash2underscore (char const) ;

bool parameqn(const char *a, const char *b, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  if (dash2underscore(a[i]) != dash2underscore(b[i]))
   return 0;
 }
 return 1;
}
