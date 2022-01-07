
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {struct resource* sibling; TYPE_1__* parent; struct resource* child; } ;
struct TYPE_2__ {struct resource* child; } ;


 int EINVAL ;

__attribute__((used)) static int __release_resource(struct resource *old, bool release_child)
{
 struct resource *tmp, **p, *chd;

 p = &old->parent->child;
 for (;;) {
  tmp = *p;
  if (!tmp)
   break;
  if (tmp == old) {
   if (release_child || !(tmp->child)) {
    *p = tmp->sibling;
   } else {
    for (chd = tmp->child;; chd = chd->sibling) {
     chd->parent = tmp->parent;
     if (!(chd->sibling))
      break;
    }
    *p = tmp->child;
    chd->sibling = tmp->sibling;
   }
   old->parent = ((void*)0);
   return 0;
  }
  p = &tmp->sibling;
 }
 return -EINVAL;
}
