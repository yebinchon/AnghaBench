
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_cond_register (int *,struct notifier_block*) ;
 int rpc_pipefs_notifier_list ;

int rpc_pipefs_notifier_register(struct notifier_block *nb)
{
 return blocking_notifier_chain_cond_register(&rpc_pipefs_notifier_list, nb);
}
