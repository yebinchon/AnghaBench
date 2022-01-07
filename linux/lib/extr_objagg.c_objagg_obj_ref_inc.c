
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {unsigned int refcount; } ;



__attribute__((used)) static unsigned int objagg_obj_ref_inc(struct objagg_obj *objagg_obj)
{
 return ++objagg_obj->refcount;
}
