
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_class {scalar_t__ defmap; int tparent; scalar_t__ next_alive; int q; scalar_t__ children; scalar_t__ filters; } ;
struct cbq_sched_data {struct cbq_class* rx_class; struct cbq_class* tx_borrowed; struct cbq_class* tx_class; struct cbq_class link; } ;
struct Qdisc {int dummy; } ;


 int EBUSY ;
 int cbq_adjust_levels (int ) ;
 int cbq_deactivate_class (struct cbq_class*) ;
 int cbq_destroy_class (struct Qdisc*,struct cbq_class*) ;
 int cbq_rmprio (struct cbq_sched_data*,struct cbq_class*) ;
 int cbq_sync_defmap (struct cbq_class*) ;
 int cbq_unlink_class (struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int cbq_delete(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = (struct cbq_class *)arg;

 if (cl->filters || cl->children || cl == &q->link)
  return -EBUSY;

 sch_tree_lock(sch);

 qdisc_purge_queue(cl->q);

 if (cl->next_alive)
  cbq_deactivate_class(cl);

 if (q->tx_borrowed == cl)
  q->tx_borrowed = q->tx_class;
 if (q->tx_class == cl) {
  q->tx_class = ((void*)0);
  q->tx_borrowed = ((void*)0);
 }





 cbq_unlink_class(cl);
 cbq_adjust_levels(cl->tparent);
 cl->defmap = 0;
 cbq_sync_defmap(cl);

 cbq_rmprio(q, cl);
 sch_tree_unlock(sch);

 cbq_destroy_class(sch, cl);
 return 0;
}
