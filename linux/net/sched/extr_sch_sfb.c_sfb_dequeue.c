
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sfb_sched_data {struct Qdisc* qdisc; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;


 int decrement_qlen (struct sk_buff*,struct sfb_sched_data*) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *sfb_dequeue(struct Qdisc *sch)
{
 struct sfb_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;
 struct sk_buff *skb;

 skb = child->dequeue(q->qdisc);

 if (skb) {
  qdisc_bstats_update(sch, skb);
  qdisc_qstats_backlog_dec(sch, skb);
  sch->q.qlen--;
  decrement_qlen(skb, q);
 }

 return skb;
}
