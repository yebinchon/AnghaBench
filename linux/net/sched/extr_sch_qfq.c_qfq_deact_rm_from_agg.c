
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qfq_sched {int dummy; } ;
struct qfq_class {TYPE_2__* qdisc; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 int qfq_deactivate_class (struct qfq_sched*,struct qfq_class*) ;
 int qfq_rm_from_agg (struct qfq_sched*,struct qfq_class*) ;

__attribute__((used)) static void qfq_deact_rm_from_agg(struct qfq_sched *q, struct qfq_class *cl)
{
 if (cl->qdisc->q.qlen > 0)
  qfq_deactivate_class(q, cl);

 qfq_rm_from_agg(q, cl);
}
