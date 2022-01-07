
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct choke_sched_data {size_t head; size_t tail; struct sk_buff** tab; int vars; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int choke_zap_head_holes (struct choke_sched_data*) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int red_is_idling (int *) ;
 int red_start_of_idle_period (int *) ;

__attribute__((used)) static struct sk_buff *choke_dequeue(struct Qdisc *sch)
{
 struct choke_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;

 if (q->head == q->tail) {
  if (!red_is_idling(&q->vars))
   red_start_of_idle_period(&q->vars);
  return ((void*)0);
 }

 skb = q->tab[q->head];
 q->tab[q->head] = ((void*)0);
 choke_zap_head_holes(q);
 --sch->q.qlen;
 qdisc_qstats_backlog_dec(sch, skb);
 qdisc_bstats_update(sch, skb);

 return skb;
}
