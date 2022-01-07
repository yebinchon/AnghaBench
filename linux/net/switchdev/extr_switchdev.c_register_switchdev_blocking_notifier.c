
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct blocking_notifier_head {int dummy; } ;


 int blocking_notifier_chain_register (struct blocking_notifier_head*,struct notifier_block*) ;
 struct blocking_notifier_head switchdev_blocking_notif_chain ;

int register_switchdev_blocking_notifier(struct notifier_block *nb)
{
 struct blocking_notifier_head *chain = &switchdev_blocking_notif_chain;

 return blocking_notifier_chain_register(chain, nb);
}
