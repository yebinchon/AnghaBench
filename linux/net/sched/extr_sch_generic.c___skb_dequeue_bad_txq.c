
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netdev_queue {int dev; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {int flags; TYPE_1__ q; int skb_bad_txq; struct netdev_queue* dev_queue; } ;
typedef int spinlock_t ;


 struct sk_buff* SKB_XOFF_MAGIC ;
 int TCQ_F_NOLOCK ;
 struct sk_buff* __skb_dequeue (int *) ;
 int netif_xmit_frozen_or_stopped (struct netdev_queue const*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_qlen_dec (struct Qdisc*) ;
 struct netdev_queue* skb_get_tx_queue (int ,struct sk_buff*) ;
 struct sk_buff* skb_peek (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct sk_buff *__skb_dequeue_bad_txq(struct Qdisc *q)
{
 const struct netdev_queue *txq = q->dev_queue;
 spinlock_t *lock = ((void*)0);
 struct sk_buff *skb;

 if (q->flags & TCQ_F_NOLOCK) {
  lock = qdisc_lock(q);
  spin_lock(lock);
 }

 skb = skb_peek(&q->skb_bad_txq);
 if (skb) {

  txq = skb_get_tx_queue(txq->dev, skb);
  if (!netif_xmit_frozen_or_stopped(txq)) {
   skb = __skb_dequeue(&q->skb_bad_txq);
   if (qdisc_is_percpu_stats(q)) {
    qdisc_qstats_cpu_backlog_dec(q, skb);
    qdisc_qstats_cpu_qlen_dec(q);
   } else {
    qdisc_qstats_backlog_dec(q, skb);
    q->q.qlen--;
   }
  } else {
   skb = SKB_XOFF_MAGIC;
  }
 }

 if (lock)
  spin_unlock(lock);

 return skb;
}
