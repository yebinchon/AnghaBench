
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int dummy; } ;
struct qfq_class {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qfq_deactivate_class (struct qfq_sched*,struct qfq_class*) ;

__attribute__((used)) static void qfq_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_class *cl = (struct qfq_class *)arg;

 qfq_deactivate_class(q, cl);
}
