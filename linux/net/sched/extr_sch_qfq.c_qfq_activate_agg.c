
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {struct qfq_aggregate* in_serv_agg; int V; int oldV; } ;
struct qfq_aggregate {int S; int budgetmax; int budget; int initial_budget; } ;
typedef enum update_reason { ____Placeholder_update_reason } update_reason ;


 int qfq_schedule_agg (struct qfq_sched*,struct qfq_aggregate*) ;
 int qfq_update_agg_ts (struct qfq_sched*,struct qfq_aggregate*,int) ;

__attribute__((used)) static void qfq_activate_agg(struct qfq_sched *q, struct qfq_aggregate *agg,
        enum update_reason reason)
{
 agg->initial_budget = agg->budget = agg->budgetmax;

 qfq_update_agg_ts(q, agg, reason);
 if (q->in_serv_agg == ((void*)0)) {
  q->in_serv_agg = agg;

  q->oldV = q->V = agg->S;
 } else if (agg != q->in_serv_agg)
  qfq_schedule_agg(q, agg);
}
