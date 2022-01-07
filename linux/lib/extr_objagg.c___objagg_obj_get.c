
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 struct objagg_obj* objagg_obj_create (struct objagg*,void*) ;
 struct objagg_obj* objagg_obj_lookup (struct objagg*,void*) ;
 int objagg_obj_ref_inc (struct objagg_obj*) ;

__attribute__((used)) static struct objagg_obj *__objagg_obj_get(struct objagg *objagg, void *obj)
{
 struct objagg_obj *objagg_obj;




 objagg_obj = objagg_obj_lookup(objagg, obj);
 if (objagg_obj) {
  objagg_obj_ref_inc(objagg_obj);
  return objagg_obj;
 }

 return objagg_obj_create(objagg, obj);
}
