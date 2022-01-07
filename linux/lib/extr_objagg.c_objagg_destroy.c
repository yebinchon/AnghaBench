
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg {scalar_t__ hints; int obj_ht; int obj_list; int root_ida; } ;


 int WARN_ON (int) ;
 int ida_destroy (int *) ;
 int kfree (struct objagg*) ;
 int list_empty (int *) ;
 int objagg_hints_put (scalar_t__) ;
 int rhashtable_destroy (int *) ;
 int trace_objagg_destroy (struct objagg*) ;

void objagg_destroy(struct objagg *objagg)
{
 trace_objagg_destroy(objagg);
 ida_destroy(&objagg->root_ida);
 WARN_ON(!list_empty(&objagg->obj_list));
 rhashtable_destroy(&objagg->obj_ht);
 if (objagg->hints)
  objagg_hints_put(objagg->hints);
 kfree(objagg);
}
