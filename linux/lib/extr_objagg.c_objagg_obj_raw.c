
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {void const* obj; } ;



const void *objagg_obj_raw(const struct objagg_obj *objagg_obj)
{
 return objagg_obj->obj;
}
