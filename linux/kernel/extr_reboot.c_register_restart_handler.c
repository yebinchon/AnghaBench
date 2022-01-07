
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int restart_handler_list ;

int register_restart_handler(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&restart_handler_list, nb);
}
