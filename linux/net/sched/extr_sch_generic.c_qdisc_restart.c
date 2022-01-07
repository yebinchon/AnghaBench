
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; } ;
typedef int spinlock_t ;


 int TCQ_F_NOLOCK ;
 struct sk_buff* dequeue_skb (struct Qdisc*,int*,int*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int sch_direct_xmit (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int *,int) ;
 struct netdev_queue* skb_get_tx_queue (struct net_device*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool qdisc_restart(struct Qdisc *q, int *packets)
{
 spinlock_t *root_lock = ((void*)0);
 struct netdev_queue *txq;
 struct net_device *dev;
 struct sk_buff *skb;
 bool validate;


 skb = dequeue_skb(q, &validate, packets);
 if (unlikely(!skb))
  return 0;

 if (!(q->flags & TCQ_F_NOLOCK))
  root_lock = qdisc_lock(q);

 dev = qdisc_dev(q);
 txq = skb_get_tx_queue(dev, skb);

 return sch_direct_xmit(skb, q, dev, txq, root_lock, validate);
}
