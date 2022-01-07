
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {void const* delta_priv; } ;


 scalar_t__ objagg_obj_is_root (struct objagg_obj const*) ;

const void *objagg_obj_delta_priv(const struct objagg_obj *objagg_obj)
{
 if (objagg_obj_is_root(objagg_obj))
  return ((void*)0);
 return objagg_obj->delta_priv;
}
