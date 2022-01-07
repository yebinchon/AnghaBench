
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {scalar_t__ skb; int timer; } ;


 int __nfulnl_send (struct nfulnl_instance*) ;
 scalar_t__ del_timer (int *) ;
 int instance_put (struct nfulnl_instance*) ;

__attribute__((used)) static void
__nfulnl_flush(struct nfulnl_instance *inst)
{

 if (del_timer(&inst->timer))
  instance_put(inst);
 if (inst->skb)
  __nfulnl_send(inst);
}
