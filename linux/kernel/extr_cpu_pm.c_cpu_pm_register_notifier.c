
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int cpu_pm_notifier_chain ;

int cpu_pm_register_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&cpu_pm_notifier_chain, nb);
}
