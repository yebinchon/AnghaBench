
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int dummy; } ;
struct qfq_class {int alist; struct qfq_aggregate* agg; } ;
struct qfq_aggregate {int active; } ;


 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int qfq_deactivate_agg (struct qfq_sched*,struct qfq_aggregate*) ;

__attribute__((used)) static void qfq_deactivate_class(struct qfq_sched *q, struct qfq_class *cl)
{
 struct qfq_aggregate *agg = cl->agg;


 list_del(&cl->alist);
 if (list_empty(&agg->active))
  qfq_deactivate_agg(q, agg);
}
