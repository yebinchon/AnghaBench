
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int (* enqueue ) (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;int busylock; int state; scalar_t__ empty; } ;
typedef int spinlock_t ;


 int NET_XMIT_DROP ;
 int NET_XMIT_MASK ;
 int NET_XMIT_SUCCESS ;
 int TCQ_F_CAN_BYPASS ;
 int TCQ_F_NOLOCK ;
 int __QDISC_STATE_DEACTIVATED ;
 int __qdisc_drop (struct sk_buff*,struct sk_buff**) ;
 int __qdisc_run (struct Qdisc*) ;
 int kfree_skb_list (struct sk_buff*) ;
 int qdisc_bstats_cpu_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 int qdisc_calculate_pkt_len (struct sk_buff*,struct Qdisc*) ;
 int qdisc_is_running (struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_qlen (struct Qdisc*) ;
 int qdisc_run (struct Qdisc*) ;
 scalar_t__ qdisc_run_begin (struct Qdisc*) ;
 int qdisc_run_end (struct Qdisc*) ;
 scalar_t__ sch_direct_xmit (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int stub2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int __dev_xmit_skb(struct sk_buff *skb, struct Qdisc *q,
     struct net_device *dev,
     struct netdev_queue *txq)
{
 spinlock_t *root_lock = qdisc_lock(q);
 struct sk_buff *to_free = ((void*)0);
 bool contended;
 int rc;

 qdisc_calculate_pkt_len(skb, q);

 if (q->flags & TCQ_F_NOLOCK) {
  if ((q->flags & TCQ_F_CAN_BYPASS) && q->empty &&
      qdisc_run_begin(q)) {
   if (unlikely(test_bit(__QDISC_STATE_DEACTIVATED,
           &q->state))) {
    __qdisc_drop(skb, &to_free);
    rc = NET_XMIT_DROP;
    goto end_run;
   }
   qdisc_bstats_cpu_update(q, skb);

   rc = NET_XMIT_SUCCESS;
   if (sch_direct_xmit(skb, q, dev, txq, ((void*)0), 1))
    __qdisc_run(q);

end_run:
   qdisc_run_end(q);
  } else {
   rc = q->enqueue(skb, q, &to_free) & NET_XMIT_MASK;
   qdisc_run(q);
  }

  if (unlikely(to_free))
   kfree_skb_list(to_free);
  return rc;
 }







 contended = qdisc_is_running(q);
 if (unlikely(contended))
  spin_lock(&q->busylock);

 spin_lock(root_lock);
 if (unlikely(test_bit(__QDISC_STATE_DEACTIVATED, &q->state))) {
  __qdisc_drop(skb, &to_free);
  rc = NET_XMIT_DROP;
 } else if ((q->flags & TCQ_F_CAN_BYPASS) && !qdisc_qlen(q) &&
     qdisc_run_begin(q)) {






  qdisc_bstats_update(q, skb);

  if (sch_direct_xmit(skb, q, dev, txq, root_lock, 1)) {
   if (unlikely(contended)) {
    spin_unlock(&q->busylock);
    contended = 0;
   }
   __qdisc_run(q);
  }

  qdisc_run_end(q);
  rc = NET_XMIT_SUCCESS;
 } else {
  rc = q->enqueue(skb, q, &to_free) & NET_XMIT_MASK;
  if (qdisc_run_begin(q)) {
   if (unlikely(contended)) {
    spin_unlock(&q->busylock);
    contended = 0;
   }
   __qdisc_run(q);
   qdisc_run_end(q);
  }
 }
 spin_unlock(root_lock);
 if (unlikely(to_free))
  kfree_skb_list(to_free);
 if (unlikely(contended))
  spin_unlock(&q->busylock);
 return rc;
}
