
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {size_t tc_index; } ;
struct TYPE_8__ {int pdrop; int forced_mark; int forced_drop; int prob_mark; int prob_drop; } ;
struct TYPE_9__ {unsigned long qavg; } ;
struct gred_sched_data {scalar_t__ prio; scalar_t__ limit; TYPE_2__ stats; int backlog; TYPE_3__ vars; int parms; int bytesin; int packetsin; } ;
struct gred_sched {size_t DPs; size_t def; struct gred_sched_data** tab; } ;
struct TYPE_7__ {scalar_t__ backlog; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ qstats; } ;


 size_t GRED_VQ_MASK ;
 int INET_ECN_set_ce (struct sk_buff*) ;
 int NET_XMIT_CN ;



 scalar_t__ gred_backlog (struct gred_sched*,struct gred_sched_data*,struct Qdisc*) ;
 int gred_load_wred_set (struct gred_sched*,struct gred_sched_data*) ;
 scalar_t__ gred_rio_mode (struct gred_sched*) ;
 int gred_store_wred_set (struct gred_sched*,struct gred_sched_data*) ;
 int gred_use_ecn (struct gred_sched_data*) ;
 int gred_use_harddrop (struct gred_sched_data*) ;
 scalar_t__ gred_wred_mode (struct gred_sched*) ;
 scalar_t__ likely (int) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 int qdisc_enqueue_tail (struct sk_buff*,struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_overlimit (struct Qdisc*) ;
 int red_action (int *,TYPE_3__*,unsigned long) ;
 unsigned long red_calc_qavg (int *,TYPE_3__*,scalar_t__) ;
 int red_end_of_idle_period (TYPE_3__*) ;
 scalar_t__ red_is_idling (TYPE_3__*) ;
 size_t tc_index_to_dp (struct sk_buff*) ;

__attribute__((used)) static int gred_enqueue(struct sk_buff *skb, struct Qdisc *sch,
   struct sk_buff **to_free)
{
 struct gred_sched_data *q = ((void*)0);
 struct gred_sched *t = qdisc_priv(sch);
 unsigned long qavg = 0;
 u16 dp = tc_index_to_dp(skb);

 if (dp >= t->DPs || (q = t->tab[dp]) == ((void*)0)) {
  dp = t->def;

  q = t->tab[dp];
  if (!q) {




   if (likely(sch->qstats.backlog + qdisc_pkt_len(skb) <=
     sch->limit))
    return qdisc_enqueue_tail(skb, sch);
   else
    goto drop;
  }



  skb->tc_index = (skb->tc_index & ~GRED_VQ_MASK) | dp;
 }


 if (!gred_wred_mode(t) && gred_rio_mode(t)) {
  int i;

  for (i = 0; i < t->DPs; i++) {
   if (t->tab[i] && t->tab[i]->prio < q->prio &&
       !red_is_idling(&t->tab[i]->vars))
    qavg += t->tab[i]->vars.qavg;
  }

 }

 q->packetsin++;
 q->bytesin += qdisc_pkt_len(skb);

 if (gred_wred_mode(t))
  gred_load_wred_set(t, q);

 q->vars.qavg = red_calc_qavg(&q->parms,
         &q->vars,
         gred_backlog(t, q, sch));

 if (red_is_idling(&q->vars))
  red_end_of_idle_period(&q->vars);

 if (gred_wred_mode(t))
  gred_store_wred_set(t, q);

 switch (red_action(&q->parms, &q->vars, q->vars.qavg + qavg)) {
 case 130:
  break;

 case 128:
  qdisc_qstats_overlimit(sch);
  if (!gred_use_ecn(q) || !INET_ECN_set_ce(skb)) {
   q->stats.prob_drop++;
   goto congestion_drop;
  }

  q->stats.prob_mark++;
  break;

 case 129:
  qdisc_qstats_overlimit(sch);
  if (gred_use_harddrop(q) || !gred_use_ecn(q) ||
      !INET_ECN_set_ce(skb)) {
   q->stats.forced_drop++;
   goto congestion_drop;
  }
  q->stats.forced_mark++;
  break;
 }

 if (gred_backlog(t, q, sch) + qdisc_pkt_len(skb) <= q->limit) {
  q->backlog += qdisc_pkt_len(skb);
  return qdisc_enqueue_tail(skb, sch);
 }

 q->stats.pdrop++;
drop:
 return qdisc_drop(skb, sch, to_free);

congestion_drop:
 qdisc_drop(skb, sch, to_free);
 return NET_XMIT_CN;
}
