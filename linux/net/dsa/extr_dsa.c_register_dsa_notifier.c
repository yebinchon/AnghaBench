
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int dsa_notif_chain ;

int register_dsa_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&dsa_notif_chain, nb);
}
