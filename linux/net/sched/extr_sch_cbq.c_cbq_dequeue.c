
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ undertime; } ;
struct cbq_sched_data {scalar_t__ toplevel; scalar_t__ wd_expires; int watchdog; TYPE_1__ link; scalar_t__ now; scalar_t__ tx_class; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
typedef scalar_t__ psched_time_t ;


 scalar_t__ PSCHED_PASTPERFECT ;
 scalar_t__ TC_CBQ_MAXLEVEL ;
 struct sk_buff* cbq_dequeue_1 (struct Qdisc*) ;
 int cbq_update (struct cbq_sched_data*) ;
 scalar_t__ psched_get_time () ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_overlimit (struct Qdisc*) ;
 int qdisc_watchdog_schedule (int *,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
cbq_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb;
 struct cbq_sched_data *q = qdisc_priv(sch);
 psched_time_t now;

 now = psched_get_time();

 if (q->tx_class)
  cbq_update(q);

 q->now = now;

 for (;;) {
  q->wd_expires = 0;

  skb = cbq_dequeue_1(sch);
  if (skb) {
   qdisc_bstats_update(sch, skb);
   sch->q.qlen--;
   return skb;
  }
  if (q->toplevel == TC_CBQ_MAXLEVEL &&
      q->link.undertime == PSCHED_PASTPERFECT)
   break;

  q->toplevel = TC_CBQ_MAXLEVEL;
  q->link.undertime = PSCHED_PASTPERFECT;
 }





 if (sch->q.qlen) {
  qdisc_qstats_overlimit(sch);
  if (q->wd_expires)
   qdisc_watchdog_schedule(&q->watchdog,
      now + q->wd_expires);
 }
 return ((void*)0);
}
