
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int ht_node; int list; } ;
struct objagg {int ht_params; int obj_ht; int obj_count; } ;


 int kfree (struct objagg_obj*) ;
 int list_del (int *) ;
 int objagg_obj_fini (struct objagg*,struct objagg_obj*) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int trace_objagg_obj_destroy (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static void objagg_obj_destroy(struct objagg *objagg,
          struct objagg_obj *objagg_obj)
{
 trace_objagg_obj_destroy(objagg, objagg_obj);
 --objagg->obj_count;
 list_del(&objagg_obj->list);
 rhashtable_remove_fast(&objagg->obj_ht, &objagg_obj->ht_node,
          objagg->ht_params);
 objagg_obj_fini(objagg, objagg_obj);
 kfree(objagg_obj);
}
