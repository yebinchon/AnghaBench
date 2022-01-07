
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skbprio_sched_data {size_t highest_prio; size_t lowest_prio; TYPE_1__* qstats; struct sk_buff_head* qdiscs; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_3__ {int backlog; } ;


 int BUG_ON (int ) ;
 int SKBPRIO_MAX_PRIORITY ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 size_t calc_new_high_prio (struct skbprio_sched_data*) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct skbprio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *skbprio_dequeue(struct Qdisc *sch)
{
 struct skbprio_sched_data *q = qdisc_priv(sch);
 struct sk_buff_head *hpq = &q->qdiscs[q->highest_prio];
 struct sk_buff *skb = __skb_dequeue(hpq);

 if (unlikely(!skb))
  return ((void*)0);

 sch->q.qlen--;
 qdisc_qstats_backlog_dec(sch, skb);
 qdisc_bstats_update(sch, skb);

 q->qstats[q->highest_prio].backlog -= qdisc_pkt_len(skb);


 if (skb_queue_empty(hpq)) {
  if (q->lowest_prio == q->highest_prio) {
   BUG_ON(sch->q.qlen);
   q->highest_prio = 0;
   q->lowest_prio = SKBPRIO_MAX_PRIORITY - 1;
  } else {
   q->highest_prio = calc_new_high_prio(q);
  }
 }
 return skb;
}
