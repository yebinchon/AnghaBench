
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int dummy; } ;
struct qfq_class {struct qfq_aggregate* agg; } ;
struct qfq_aggregate {int num_classes; } ;


 int qfq_destroy_agg (struct qfq_sched*,struct qfq_aggregate*) ;
 int qfq_update_agg (struct qfq_sched*,struct qfq_aggregate*,int) ;

__attribute__((used)) static void qfq_rm_from_agg(struct qfq_sched *q, struct qfq_class *cl)
{
 struct qfq_aggregate *agg = cl->agg;

 cl->agg = ((void*)0);
 if (agg->num_classes == 1) {
  qfq_destroy_agg(q, agg);
  return;
 }
 qfq_update_agg(q, agg, agg->num_classes-1);
}
