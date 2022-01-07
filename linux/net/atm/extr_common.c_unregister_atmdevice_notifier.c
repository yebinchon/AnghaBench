
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atm_dev_notify_chain ;
 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;

void unregister_atmdevice_notifier(struct notifier_block *nb)
{
 atomic_notifier_chain_unregister(&atm_dev_notify_chain, nb);
}
