
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int wsum; int iwsum; struct qfq_aggregate* in_serv_agg; } ;
struct qfq_aggregate {scalar_t__ class_weight; int nonfull_next; } ;


 int ONE_FP ;
 int hlist_del_init (int *) ;
 int kfree (struct qfq_aggregate*) ;
 struct qfq_aggregate* qfq_choose_next_agg (struct qfq_sched*) ;

__attribute__((used)) static void qfq_destroy_agg(struct qfq_sched *q, struct qfq_aggregate *agg)
{
 hlist_del_init(&agg->nonfull_next);
 q->wsum -= agg->class_weight;
 if (q->wsum != 0)
  q->iwsum = ONE_FP / q->wsum;

 if (q->in_serv_agg == agg)
  q->in_serv_agg = qfq_choose_next_agg(q);
 kfree(agg);
}
