
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ start; } ;



__attribute__((used)) static int cmp_range(const void *x1, const void *x2)
{
 const struct range *r1 = x1;
 const struct range *r2 = x2;

 if (r1->start < r2->start)
  return -1;
 if (r1->start > r2->start)
  return 1;
 return 0;
}
