
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_lsm_notifier_chain ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;

int register_blocking_lsm_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&blocking_lsm_notifier_chain,
      nb);
}
