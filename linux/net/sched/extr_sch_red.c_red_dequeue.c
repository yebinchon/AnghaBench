
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct red_sched_data {int vars; struct Qdisc* qdisc; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int red_is_idling (int *) ;
 int red_start_of_idle_period (int *) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *red_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb;
 struct red_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;

 skb = child->dequeue(child);
 if (skb) {
  qdisc_bstats_update(sch, skb);
  qdisc_qstats_backlog_dec(sch, skb);
  sch->q.qlen--;
 } else {
  if (!red_is_idling(&q->vars))
   red_start_of_idle_period(&q->vars);
 }
 return skb;
}
