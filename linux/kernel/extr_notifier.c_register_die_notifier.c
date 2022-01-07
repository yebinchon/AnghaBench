
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int die_chain ;
 int vmalloc_sync_all () ;

int register_die_notifier(struct notifier_block *nb)
{
 vmalloc_sync_all();
 return atomic_notifier_chain_register(&die_chain, nb);
}
