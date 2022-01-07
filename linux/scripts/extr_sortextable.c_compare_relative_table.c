
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int r (void const*) ;

__attribute__((used)) static int compare_relative_table(const void *a, const void *b)
{
 int32_t av = (int32_t)r(a);
 int32_t bv = (int32_t)r(b);

 if (av < bv)
  return -1;
 if (av > bv)
  return 1;
 return 0;
}
