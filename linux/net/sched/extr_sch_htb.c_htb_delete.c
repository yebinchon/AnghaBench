
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct htb_sched {TYPE_4__* hlevel; int clhash; } ;
struct TYPE_6__ {int q; } ;
struct htb_class {size_t level; scalar_t__ cmode; int pq_node; scalar_t__ prio_activity; TYPE_3__* parent; int common; TYPE_2__ leaf; scalar_t__ filter_cnt; scalar_t__ children; } ;
struct Qdisc {int dev_queue; } ;
struct TYPE_8__ {int wait_pq; } ;
struct TYPE_5__ {int classid; } ;
struct TYPE_7__ {int children; TYPE_1__ common; } ;


 int EBUSY ;
 scalar_t__ HTB_CAN_SEND ;
 int htb_deactivate (struct htb_sched*,struct htb_class*) ;
 int htb_destroy_class (struct Qdisc*,struct htb_class*) ;
 scalar_t__ htb_parent_last_child (struct htb_class*) ;
 int htb_parent_to_leaf (struct htb_sched*,struct htb_class*,struct Qdisc*) ;
 int htb_safe_rb_erase (int *,int *) ;
 int pfifo_qdisc_ops ;
 int qdisc_class_hash_remove (int *,int *) ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,int *) ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (int ) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int htb_delete(struct Qdisc *sch, unsigned long arg)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct htb_class *cl = (struct htb_class *)arg;
 struct Qdisc *new_q = ((void*)0);
 int last_child = 0;





 if (cl->children || cl->filter_cnt)
  return -EBUSY;

 if (!cl->level && htb_parent_last_child(cl)) {
  new_q = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
       cl->parent->common.classid,
       ((void*)0));
  last_child = 1;
 }

 sch_tree_lock(sch);

 if (!cl->level)
  qdisc_purge_queue(cl->leaf.q);


 qdisc_class_hash_remove(&q->clhash, &cl->common);
 if (cl->parent)
  cl->parent->children--;

 if (cl->prio_activity)
  htb_deactivate(q, cl);

 if (cl->cmode != HTB_CAN_SEND)
  htb_safe_rb_erase(&cl->pq_node,
      &q->hlevel[cl->level].wait_pq);

 if (last_child)
  htb_parent_to_leaf(q, cl, new_q);

 sch_tree_unlock(sch);

 htb_destroy_class(sch, cl);
 return 0;
}
