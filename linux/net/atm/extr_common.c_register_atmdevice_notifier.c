
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atm_dev_notify_chain ;
 int atomic_notifier_chain_register (int *,struct notifier_block*) ;

int register_atmdevice_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&atm_dev_notify_chain, nb);
}
