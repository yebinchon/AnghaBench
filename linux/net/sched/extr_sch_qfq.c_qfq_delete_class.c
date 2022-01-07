
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int clhash; } ;
struct qfq_class {scalar_t__ filter_cnt; int common; int qdisc; } ;
struct Qdisc {int dummy; } ;


 int EBUSY ;
 int qdisc_class_hash_remove (int *,int *) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (int ) ;
 int qfq_destroy_class (struct Qdisc*,struct qfq_class*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int qfq_delete_class(struct Qdisc *sch, unsigned long arg)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_class *cl = (struct qfq_class *)arg;

 if (cl->filter_cnt > 0)
  return -EBUSY;

 sch_tree_lock(sch);

 qdisc_purge_queue(cl->qdisc);
 qdisc_class_hash_remove(&q->clhash, &cl->common);

 sch_tree_unlock(sch);

 qfq_destroy_class(sch, cl);
 return 0;
}
