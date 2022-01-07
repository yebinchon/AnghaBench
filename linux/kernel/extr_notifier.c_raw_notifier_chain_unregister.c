
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_notifier_head {int head; } ;
struct notifier_block {int dummy; } ;


 int notifier_chain_unregister (int *,struct notifier_block*) ;

int raw_notifier_chain_unregister(struct raw_notifier_head *nh,
  struct notifier_block *n)
{
 return notifier_chain_unregister(&nh->head, n);
}
