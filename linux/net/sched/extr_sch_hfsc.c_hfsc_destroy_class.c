
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int rate_est; int qdisc; int block; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;


 int gen_kill_estimator (int *) ;
 int kfree (struct hfsc_class*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void
hfsc_destroy_class(struct Qdisc *sch, struct hfsc_class *cl)
{
 struct hfsc_sched *q = qdisc_priv(sch);

 tcf_block_put(cl->block);
 qdisc_put(cl->qdisc);
 gen_kill_estimator(&cl->rate_est);
 if (cl != &q->root)
  kfree(cl);
}
