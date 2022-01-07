
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uid_gid_extent {scalar_t__ lower_first; } ;



__attribute__((used)) static int cmp_extents_reverse(const void *a, const void *b)
{
 const struct uid_gid_extent *e1 = a;
 const struct uid_gid_extent *e2 = b;

 if (e1->lower_first < e2->lower_first)
  return -1;

 if (e1->lower_first > e2->lower_first)
  return 1;

 return 0;
}
