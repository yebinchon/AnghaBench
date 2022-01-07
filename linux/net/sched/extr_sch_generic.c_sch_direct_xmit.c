
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
typedef int spinlock_t ;


 int HARD_TX_LOCK (struct net_device*,struct netdev_queue*,int ) ;
 int HARD_TX_UNLOCK (struct net_device*,struct netdev_queue*) ;
 int NETDEV_TX_BUSY ;
 struct sk_buff* dev_hard_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int*) ;
 int dev_requeue_skb (struct sk_buff*,struct Qdisc*) ;
 int dev_xmit_complete (int) ;
 scalar_t__ likely (struct sk_buff*) ;
 int net_warn_ratelimited (char*,int ,int,int ) ;
 int netif_xmit_frozen_or_stopped (struct netdev_queue*) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* validate_xmit_skb_list (struct sk_buff*,struct net_device*,int*) ;

bool sch_direct_xmit(struct sk_buff *skb, struct Qdisc *q,
       struct net_device *dev, struct netdev_queue *txq,
       spinlock_t *root_lock, bool validate)
{
 int ret = NETDEV_TX_BUSY;
 bool again = 0;


 if (root_lock)
  spin_unlock(root_lock);


 if (validate)
  skb = validate_xmit_skb_list(skb, dev, &again);
 if (likely(skb)) {
  HARD_TX_LOCK(dev, txq, smp_processor_id());
  if (!netif_xmit_frozen_or_stopped(txq))
   skb = dev_hard_start_xmit(skb, dev, txq, &ret);

  HARD_TX_UNLOCK(dev, txq);
 } else {
  if (root_lock)
   spin_lock(root_lock);
  return 1;
 }

 if (root_lock)
  spin_lock(root_lock);

 if (!dev_xmit_complete(ret)) {

  if (unlikely(ret != NETDEV_TX_BUSY))
   net_warn_ratelimited("BUG %s code %d qlen %d\n",
          dev->name, ret, q->q.qlen);

  dev_requeue_skb(skb, q);
  return 0;
 }

 return 1;
}
