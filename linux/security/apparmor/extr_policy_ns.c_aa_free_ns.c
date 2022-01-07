
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_ns {TYPE_1__* unconfined; int parent; int labels; int base; } ;
struct TYPE_2__ {int * ns; } ;


 int aa_free_profile (TYPE_1__*) ;
 int aa_labelset_destroy (int *) ;
 int aa_policy_destroy (int *) ;
 int aa_put_ns (int ) ;
 int kzfree (struct aa_ns*) ;

void aa_free_ns(struct aa_ns *ns)
{
 if (!ns)
  return;

 aa_policy_destroy(&ns->base);
 aa_labelset_destroy(&ns->labels);
 aa_put_ns(ns->parent);

 ns->unconfined->ns = ((void*)0);
 aa_free_profile(ns->unconfined);
 kzfree(ns);
}
