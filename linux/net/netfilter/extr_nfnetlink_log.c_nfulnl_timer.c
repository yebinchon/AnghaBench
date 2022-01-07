
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfulnl_instance {int lock; scalar_t__ skb; } ;


 int __nfulnl_send (struct nfulnl_instance*) ;
 struct nfulnl_instance* from_timer (int ,struct timer_list*,int ) ;
 struct nfulnl_instance* inst ;
 int instance_put (struct nfulnl_instance*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;

__attribute__((used)) static void
nfulnl_timer(struct timer_list *t)
{
 struct nfulnl_instance *inst = from_timer(inst, t, timer);

 spin_lock_bh(&inst->lock);
 if (inst->skb)
  __nfulnl_send(inst);
 spin_unlock_bh(&inst->lock);
 instance_put(inst);
}
