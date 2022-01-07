
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int parent; } ;



__attribute__((used)) static bool objagg_obj_is_root(const struct objagg_obj *objagg_obj)
{



 return !objagg_obj->parent;
}
