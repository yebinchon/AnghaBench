
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct blocking_notifier_head {int rwsem; int head; } ;


 scalar_t__ SYSTEM_BOOTING ;
 int down_write (int *) ;
 int notifier_chain_unregister (int *,struct notifier_block*) ;
 scalar_t__ system_state ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

int blocking_notifier_chain_unregister(struct blocking_notifier_head *nh,
  struct notifier_block *n)
{
 int ret;






 if (unlikely(system_state == SYSTEM_BOOTING))
  return notifier_chain_unregister(&nh->head, n);

 down_write(&nh->rwsem);
 ret = notifier_chain_unregister(&nh->head, n);
 up_write(&nh->rwsem);
 return ret;
}
