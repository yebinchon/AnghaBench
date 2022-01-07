
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nfit_test_lookup_fn ;
typedef int nfit_test_evaluate_dsm_fn ;
struct TYPE_2__ {int list; int evaluate_dsm; int nfit_test_lookup; } ;


 int iomap_head ;
 TYPE_1__ iomap_ops ;
 int list_add_rcu (int *,int *) ;

void nfit_test_setup(nfit_test_lookup_fn lookup,
  nfit_test_evaluate_dsm_fn evaluate)
{
 iomap_ops.nfit_test_lookup = lookup;
 iomap_ops.evaluate_dsm = evaluate;
 list_add_rcu(&iomap_ops.list, &iomap_head);
}
