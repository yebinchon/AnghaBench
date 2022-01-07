
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_hints_node {int dummy; } ;
struct objagg_hints {int ht_params; int node_ht; } ;


 struct objagg_hints_node* rhashtable_lookup_fast (int *,void*,int ) ;

__attribute__((used)) static struct objagg_hints_node *
objagg_hints_lookup(struct objagg_hints *objagg_hints, void *obj)
{
 if (!objagg_hints)
  return ((void*)0);
 return rhashtable_lookup_fast(&objagg_hints->node_ht, obj,
          objagg_hints->ht_params);
}
