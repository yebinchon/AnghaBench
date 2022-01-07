
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct gred_sched_data {int vars; scalar_t__ backlog; } ;
struct gred_sched {size_t DPs; int wred_set; struct gred_sched_data** tab; } ;
struct TYPE_2__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;


 scalar_t__ gred_wred_mode (struct gred_sched*) ;
 int net_warn_ratelimited (char*,size_t) ;
 struct sk_buff* qdisc_dequeue_head (struct Qdisc*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int red_start_of_idle_period (int *) ;
 size_t tc_index_to_dp (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *gred_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb;
 struct gred_sched *t = qdisc_priv(sch);

 skb = qdisc_dequeue_head(sch);

 if (skb) {
  struct gred_sched_data *q;
  u16 dp = tc_index_to_dp(skb);

  if (dp >= t->DPs || (q = t->tab[dp]) == ((void*)0)) {
   net_warn_ratelimited("GRED: Unable to relocate VQ 0x%x after dequeue, screwing up backlog\n",
          tc_index_to_dp(skb));
  } else {
   q->backlog -= qdisc_pkt_len(skb);

   if (gred_wred_mode(t)) {
    if (!sch->qstats.backlog)
     red_start_of_idle_period(&t->wred_set);
   } else {
    if (!q->backlog)
     red_start_of_idle_period(&q->vars);
   }
  }

  return skb;
 }

 return ((void*)0);
}
