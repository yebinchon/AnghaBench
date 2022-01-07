
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {struct aa_ns* parent; } ;



bool aa_ns_visible(struct aa_ns *curr, struct aa_ns *view, bool subns)
{
 if (curr == view)
  return 1;

 if (!subns)
  return 0;

 for ( ; view; view = view->parent) {
  if (view->parent == curr)
   return 1;
 }

 return 0;
}
