
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int refcount; } ;
struct objagg {int dummy; } ;


 scalar_t__ IS_ERR (struct objagg_obj*) ;
 struct objagg_obj* __objagg_obj_get (struct objagg*,void*) ;
 int objagg_obj_stats_inc (struct objagg_obj*) ;
 int trace_objagg_obj_get (struct objagg*,struct objagg_obj*,int ) ;

struct objagg_obj *objagg_obj_get(struct objagg *objagg, void *obj)
{
 struct objagg_obj *objagg_obj;

 objagg_obj = __objagg_obj_get(objagg, obj);
 if (IS_ERR(objagg_obj))
  return objagg_obj;
 objagg_obj_stats_inc(objagg_obj);
 trace_objagg_obj_get(objagg, objagg_obj, objagg_obj->refcount);
 return objagg_obj;
}
