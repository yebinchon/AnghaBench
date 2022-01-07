
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_atoms {scalar_t__ max_lat; } ;



__attribute__((used)) static int max_cmp(struct work_atoms *l, struct work_atoms *r)
{
 if (l->max_lat < r->max_lat)
  return -1;
 if (l->max_lat > r->max_lat)
  return 1;

 return 0;
}
