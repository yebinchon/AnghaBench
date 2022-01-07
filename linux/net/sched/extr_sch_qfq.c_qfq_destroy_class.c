
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int dummy; } ;
struct qfq_class {int qdisc; int rate_est; } ;
struct Qdisc {int dummy; } ;


 int gen_kill_estimator (int *) ;
 int kfree (struct qfq_class*) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int qfq_rm_from_agg (struct qfq_sched*,struct qfq_class*) ;

__attribute__((used)) static void qfq_destroy_class(struct Qdisc *sch, struct qfq_class *cl)
{
 struct qfq_sched *q = qdisc_priv(sch);

 qfq_rm_from_agg(q, cl);
 gen_kill_estimator(&cl->rate_est);
 qdisc_put(cl->qdisc);
 kfree(cl);
}
