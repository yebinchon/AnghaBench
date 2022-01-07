
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_hints {int node_ht; scalar_t__ refcount; } ;


 int kfree (struct objagg_hints*) ;
 int objagg_hints_flush (struct objagg_hints*) ;
 int rhashtable_destroy (int *) ;

void objagg_hints_put(struct objagg_hints *objagg_hints)
{
 if (--objagg_hints->refcount)
  return;
 objagg_hints_flush(objagg_hints);
 rhashtable_destroy(&objagg_hints->node_ht);
 kfree(objagg_hints);
}
