
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct prio_sched_data {int bands; struct Qdisc** queues; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* qdisc_dequeue_peeked (struct Qdisc*) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *prio_dequeue(struct Qdisc *sch)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 int prio;

 for (prio = 0; prio < q->bands; prio++) {
  struct Qdisc *qdisc = q->queues[prio];
  struct sk_buff *skb = qdisc_dequeue_peeked(qdisc);
  if (skb) {
   qdisc_bstats_update(sch, skb);
   qdisc_qstats_backlog_dec(sch, skb);
   sch->q.qlen--;
   return skb;
  }
 }
 return ((void*)0);

}
