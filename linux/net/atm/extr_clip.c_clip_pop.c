
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct clip_vcc {int xoff; int (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {int xoff_lock; } ;


 struct clip_vcc* CLIP_VCC (struct atm_vcc*) ;
 TYPE_1__* PRIV (struct net_device*) ;
 scalar_t__ atm_may_send (struct atm_vcc*,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,struct atm_vcc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int xchg (int *,int ) ;

__attribute__((used)) static void clip_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct clip_vcc *clip_vcc = CLIP_VCC(vcc);
 struct net_device *dev = skb->dev;
 int old;
 unsigned long flags;

 pr_debug("(vcc %p)\n", vcc);
 clip_vcc->old_pop(vcc, skb);

 if (!dev)
  return;
 spin_lock_irqsave(&PRIV(dev)->xoff_lock, flags);
 if (atm_may_send(vcc, 0)) {
  old = xchg(&clip_vcc->xoff, 0);
  if (old)
   netif_wake_queue(dev);
 }
 spin_unlock_irqrestore(&PRIV(dev)->xoff_lock, flags);
}
