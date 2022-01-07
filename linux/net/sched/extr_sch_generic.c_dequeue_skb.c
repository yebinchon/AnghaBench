
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netdev_queue {int dev; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {int flags; struct sk_buff* (* dequeue ) (struct Qdisc*) ;TYPE_1__ q; int gso_skb; struct netdev_queue* dev_queue; } ;
typedef int spinlock_t ;


 struct sk_buff* SKB_XOFF_MAGIC ;
 int TCQ_F_NOLOCK ;
 int TCQ_F_ONETXQUEUE ;
 struct sk_buff* __skb_dequeue (int *) ;
 scalar_t__ netif_xmit_frozen_or_stopped (struct netdev_queue const*) ;
 struct sk_buff* qdisc_dequeue_skb_bad_txq (struct Qdisc*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 scalar_t__ qdisc_may_bulk (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_qlen_dec (struct Qdisc*) ;
 struct netdev_queue* skb_get_tx_queue (int ,struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sk_buff* stub1 (struct Qdisc*) ;
 int trace_qdisc_dequeue (struct Qdisc*,struct netdev_queue const*,int,struct sk_buff*) ;
 int try_bulk_dequeue_skb (struct Qdisc*,struct sk_buff*,struct netdev_queue const*,int*) ;
 int try_bulk_dequeue_skb_slow (struct Qdisc*,struct sk_buff*,int*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *dequeue_skb(struct Qdisc *q, bool *validate,
       int *packets)
{
 const struct netdev_queue *txq = q->dev_queue;
 struct sk_buff *skb = ((void*)0);

 *packets = 1;
 if (unlikely(!skb_queue_empty(&q->gso_skb))) {
  spinlock_t *lock = ((void*)0);

  if (q->flags & TCQ_F_NOLOCK) {
   lock = qdisc_lock(q);
   spin_lock(lock);
  }

  skb = skb_peek(&q->gso_skb);




  if (!skb) {
   if (lock)
    spin_unlock(lock);
   goto validate;
  }


  *validate = 0;
  if (xfrm_offload(skb))
   *validate = 1;

  txq = skb_get_tx_queue(txq->dev, skb);
  if (!netif_xmit_frozen_or_stopped(txq)) {
   skb = __skb_dequeue(&q->gso_skb);
   if (qdisc_is_percpu_stats(q)) {
    qdisc_qstats_cpu_backlog_dec(q, skb);
    qdisc_qstats_cpu_qlen_dec(q);
   } else {
    qdisc_qstats_backlog_dec(q, skb);
    q->q.qlen--;
   }
  } else {
   skb = ((void*)0);
  }
  if (lock)
   spin_unlock(lock);
  goto trace;
 }
validate:
 *validate = 1;

 if ((q->flags & TCQ_F_ONETXQUEUE) &&
     netif_xmit_frozen_or_stopped(txq))
  return skb;

 skb = qdisc_dequeue_skb_bad_txq(q);
 if (unlikely(skb)) {
  if (skb == SKB_XOFF_MAGIC)
   return ((void*)0);
  goto bulk;
 }
 skb = q->dequeue(q);
 if (skb) {
bulk:
  if (qdisc_may_bulk(q))
   try_bulk_dequeue_skb(q, skb, txq, packets);
  else
   try_bulk_dequeue_skb_slow(q, skb, packets);
 }
trace:
 trace_qdisc_dequeue(q, txq, *packets, skb);
 return skb;
}
