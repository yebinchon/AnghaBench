
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ tc_at_ingress; int sk; struct net_device* dev; } ;
struct netdev_queue {int xmit_lock_owner; int qdisc; } ;
struct net_device {int priv_flags; int flags; int tx_dropped; int name; } ;
struct Qdisc {scalar_t__ enqueue; } ;
struct TYPE_2__ {int tx_flags; } ;


 int ENETDOWN ;
 int ENOMEM ;
 int HARD_TX_LOCK (struct net_device*,struct netdev_queue*,int) ;
 int HARD_TX_UNLOCK (struct net_device*,struct netdev_queue*) ;
 int IFF_UP ;
 int IFF_XMIT_DST_RELEASE ;
 int SCM_TSTAMP_SCHED ;
 int SKBTX_SCHED_TSTAMP ;
 int __dev_xmit_skb (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*) ;
 int __skb_tstamp_tx (struct sk_buff*,int *,int ,int ) ;
 int atomic_long_inc (int *) ;
 struct sk_buff* dev_hard_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int*) ;
 scalar_t__ dev_xmit_complete (int) ;
 scalar_t__ dev_xmit_recursion () ;
 int dev_xmit_recursion_dec () ;
 int dev_xmit_recursion_inc () ;
 int egress_needed_key ;
 int kfree_skb_list (struct sk_buff*) ;
 int net_crit_ratelimited (char*,int ) ;
 struct netdev_queue* netdev_core_pick_tx (struct net_device*,struct sk_buff*,struct net_device*) ;
 int netif_xmit_stopped (struct netdev_queue*) ;
 int qdisc_pkt_len_init (struct sk_buff*) ;
 struct Qdisc* rcu_dereference_bh (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 struct sk_buff* sch_handle_egress (struct sk_buff*,int*,struct net_device*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_update_prio (struct sk_buff*) ;
 int smp_processor_id () ;
 scalar_t__ static_branch_unlikely (int *) ;
 int trace_net_dev_queue (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* validate_xmit_skb (struct sk_buff*,struct net_device*,int*) ;

__attribute__((used)) static int __dev_queue_xmit(struct sk_buff *skb, struct net_device *sb_dev)
{
 struct net_device *dev = skb->dev;
 struct netdev_queue *txq;
 struct Qdisc *q;
 int rc = -ENOMEM;
 bool again = 0;

 skb_reset_mac_header(skb);

 if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_SCHED_TSTAMP))
  __skb_tstamp_tx(skb, ((void*)0), skb->sk, SCM_TSTAMP_SCHED);




 rcu_read_lock_bh();

 skb_update_prio(skb);

 qdisc_pkt_len_init(skb);
 if (dev->priv_flags & IFF_XMIT_DST_RELEASE)
  skb_dst_drop(skb);
 else
  skb_dst_force(skb);

 txq = netdev_core_pick_tx(dev, skb, sb_dev);
 q = rcu_dereference_bh(txq->qdisc);

 trace_net_dev_queue(skb);
 if (q->enqueue) {
  rc = __dev_xmit_skb(skb, q, dev, txq);
  goto out;
 }
 if (dev->flags & IFF_UP) {
  int cpu = smp_processor_id();

  if (txq->xmit_lock_owner != cpu) {
   if (dev_xmit_recursion())
    goto recursion_alert;

   skb = validate_xmit_skb(skb, dev, &again);
   if (!skb)
    goto out;

   HARD_TX_LOCK(dev, txq, cpu);

   if (!netif_xmit_stopped(txq)) {
    dev_xmit_recursion_inc();
    skb = dev_hard_start_xmit(skb, dev, txq, &rc);
    dev_xmit_recursion_dec();
    if (dev_xmit_complete(rc)) {
     HARD_TX_UNLOCK(dev, txq);
     goto out;
    }
   }
   HARD_TX_UNLOCK(dev, txq);
   net_crit_ratelimited("Virtual device %s asks to queue packet!\n",
          dev->name);
  } else {



recursion_alert:
   net_crit_ratelimited("Dead loop on virtual device %s, fix it urgently!\n",
          dev->name);
  }
 }

 rc = -ENETDOWN;
 rcu_read_unlock_bh();

 atomic_long_inc(&dev->tx_dropped);
 kfree_skb_list(skb);
 return rc;
out:
 rcu_read_unlock_bh();
 return rc;
}
