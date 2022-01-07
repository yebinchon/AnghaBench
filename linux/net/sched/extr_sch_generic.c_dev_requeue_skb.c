
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_3__ {int requeues; } ;
struct Qdisc {int flags; TYPE_2__ q; TYPE_1__ qstats; int gso_skb; } ;
typedef int spinlock_t ;


 int TCQ_F_NOLOCK ;
 int __netif_schedule (struct Qdisc*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_qstats_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_cpu_qlen_inc (struct Qdisc*) ;
 int qdisc_qstats_cpu_requeues_inc (struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void dev_requeue_skb(struct sk_buff *skb, struct Qdisc *q)
{
 spinlock_t *lock = ((void*)0);

 if (q->flags & TCQ_F_NOLOCK) {
  lock = qdisc_lock(q);
  spin_lock(lock);
 }

 while (skb) {
  struct sk_buff *next = skb->next;

  __skb_queue_tail(&q->gso_skb, skb);


  if (qdisc_is_percpu_stats(q)) {
   qdisc_qstats_cpu_requeues_inc(q);
   qdisc_qstats_cpu_backlog_inc(q, skb);
   qdisc_qstats_cpu_qlen_inc(q);
  } else {
   q->qstats.requeues++;
   qdisc_qstats_backlog_inc(q, skb);
   q->q.qlen++;
  }

  skb = next;
 }
 if (lock)
  spin_unlock(lock);
 __netif_schedule(q);
}
