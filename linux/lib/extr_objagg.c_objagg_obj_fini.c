
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 int objagg_obj_is_root (struct objagg_obj*) ;
 int objagg_obj_parent_unassign (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_root_destroy (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static void objagg_obj_fini(struct objagg *objagg,
       struct objagg_obj *objagg_obj)
{
 if (!objagg_obj_is_root(objagg_obj))
  objagg_obj_parent_unassign(objagg, objagg_obj);
 else
  objagg_obj_root_destroy(objagg, objagg_obj);
}
