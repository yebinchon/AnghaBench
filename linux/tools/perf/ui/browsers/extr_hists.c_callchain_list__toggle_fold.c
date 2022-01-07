
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_list {int unfolded; int has_children; } ;



__attribute__((used)) static bool callchain_list__toggle_fold(struct callchain_list *cl)
{
 if (!cl)
  return 0;

 if (!cl->has_children)
  return 0;

 cl->unfolded = !cl->unfolded;
 return 1;
}
