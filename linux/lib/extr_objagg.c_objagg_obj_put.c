
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int refcount; } ;
struct objagg {int dummy; } ;


 int __objagg_obj_put (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_stats_dec (struct objagg_obj*) ;
 int trace_objagg_obj_put (struct objagg*,struct objagg_obj*,int ) ;

void objagg_obj_put(struct objagg *objagg, struct objagg_obj *objagg_obj)
{
 trace_objagg_obj_put(objagg, objagg_obj, objagg_obj->refcount);
 objagg_obj_stats_dec(objagg_obj);
 __objagg_obj_put(objagg, objagg_obj);
}
