
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int cpumask_change_notifier; } ;
struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int padata_unregister_cpumask_notifier(struct padata_instance *pinst,
           struct notifier_block *nblock)
{
 return blocking_notifier_chain_unregister(
  &pinst->cpumask_change_notifier,
  nblock);
}
