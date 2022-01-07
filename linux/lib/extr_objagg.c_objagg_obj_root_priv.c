
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {void const* root_priv; struct objagg_obj const* parent; } ;


 int WARN_ON (int) ;
 scalar_t__ objagg_obj_is_root (struct objagg_obj const*) ;

const void *objagg_obj_root_priv(const struct objagg_obj *objagg_obj)
{
 if (objagg_obj_is_root(objagg_obj))
  return objagg_obj->root_priv;
 WARN_ON(!objagg_obj_is_root(objagg_obj->parent));
 return objagg_obj->parent->root_priv;
}
