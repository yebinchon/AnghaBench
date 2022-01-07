
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct qfq_sched {int iwsum; scalar_t__ V; struct qfq_aggregate* in_serv_agg; } ;
struct qfq_class {int dummy; } ;
struct qfq_aggregate {unsigned int budget; unsigned int initial_budget; unsigned int budgetmax; scalar_t__ F; int active; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int agg_dequeue (struct qfq_aggregate*,struct qfq_class*,unsigned int) ;
 int charge_actual_service (struct qfq_aggregate*) ;
 int list_empty (int *) ;
 int pr_debug (char*,unsigned int,unsigned long long,unsigned long long) ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 struct qfq_aggregate* qfq_choose_next_agg (struct qfq_sched*) ;
 struct sk_buff* qfq_peek_skb (struct qfq_aggregate*,struct qfq_class**,unsigned int*) ;
 int qfq_schedule_agg (struct qfq_sched*,struct qfq_aggregate*) ;
 int qfq_update_agg_ts (struct qfq_sched*,struct qfq_aggregate*,int ) ;
 int requeue ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *qfq_dequeue(struct Qdisc *sch)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_aggregate *in_serv_agg = q->in_serv_agg;
 struct qfq_class *cl;
 struct sk_buff *skb = ((void*)0);

 unsigned int len = 0;

 if (in_serv_agg == ((void*)0))
  return ((void*)0);

 if (!list_empty(&in_serv_agg->active))
  skb = qfq_peek_skb(in_serv_agg, &cl, &len);






 if (len == 0 || in_serv_agg->budget < len) {
  charge_actual_service(in_serv_agg);


  in_serv_agg->initial_budget = in_serv_agg->budget =
   in_serv_agg->budgetmax;

  if (!list_empty(&in_serv_agg->active)) {
   qfq_update_agg_ts(q, in_serv_agg, requeue);
   qfq_schedule_agg(q, in_serv_agg);
  } else if (sch->q.qlen == 0) {
   q->in_serv_agg = ((void*)0);
   return ((void*)0);
  }





  in_serv_agg = q->in_serv_agg = qfq_choose_next_agg(q);
  skb = qfq_peek_skb(in_serv_agg, &cl, &len);
 }
 if (!skb)
  return ((void*)0);

 qdisc_qstats_backlog_dec(sch, skb);
 sch->q.qlen--;
 qdisc_bstats_update(sch, skb);

 agg_dequeue(in_serv_agg, cl, len);




 if (unlikely(in_serv_agg->budget < len))
  in_serv_agg->budget = 0;
 else
  in_serv_agg->budget -= len;

 q->V += (u64)len * q->iwsum;
 pr_debug("qfq dequeue: len %u F %lld now %lld\n",
   len, (unsigned long long) in_serv_agg->F,
   (unsigned long long) q->V);

 return skb;
}
