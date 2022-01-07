
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct TYPE_6__ {unsigned long qlen; int lock; } ;
struct TYPE_5__ {unsigned long expires; } ;
struct neigh_table {TYPE_3__ proxy_queue; TYPE_1__ proxy_timer; } ;
struct neigh_parms {int dummy; } ;
struct TYPE_7__ {unsigned long sched_next; int flags; } ;


 int LOCALLY_ENQUEUED ;
 TYPE_4__* NEIGH_CB (struct sk_buff*) ;
 unsigned long NEIGH_VAR (struct neigh_parms*,int ) ;
 int PROXY_DELAY ;
 int PROXY_QLEN ;
 int __skb_queue_tail (TYPE_3__*,struct sk_buff*) ;
 scalar_t__ del_timer (TYPE_1__*) ;
 int dev_hold (int ) ;
 unsigned long jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 unsigned long prandom_u32 () ;
 int skb_dst_drop (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

void pneigh_enqueue(struct neigh_table *tbl, struct neigh_parms *p,
      struct sk_buff *skb)
{
 unsigned long now = jiffies;

 unsigned long sched_next = now + (prandom_u32() %
       NEIGH_VAR(p, PROXY_DELAY));

 if (tbl->proxy_queue.qlen > NEIGH_VAR(p, PROXY_QLEN)) {
  kfree_skb(skb);
  return;
 }

 NEIGH_CB(skb)->sched_next = sched_next;
 NEIGH_CB(skb)->flags |= LOCALLY_ENQUEUED;

 spin_lock(&tbl->proxy_queue.lock);
 if (del_timer(&tbl->proxy_timer)) {
  if (time_before(tbl->proxy_timer.expires, sched_next))
   sched_next = tbl->proxy_timer.expires;
 }
 skb_dst_drop(skb);
 dev_hold(skb->dev);
 __skb_queue_tail(&tbl->proxy_queue, skb);
 mod_timer(&tbl->proxy_timer, sched_next);
 spin_unlock(&tbl->proxy_queue.lock);
}
