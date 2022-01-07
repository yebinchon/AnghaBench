
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int inetaddr_validator_chain ;

int register_inetaddr_validator_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&inetaddr_validator_chain, nb);
}
