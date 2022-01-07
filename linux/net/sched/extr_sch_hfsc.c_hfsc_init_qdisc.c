
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_hfsc_qopt {int defcls; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int classid; } ;
struct TYPE_3__ {TYPE_2__ cl_common; void* cf_tree; void* vt_tree; int children; int * qdisc; struct hfsc_sched* sched; int filter_list; int block; } ;
struct hfsc_sched {int clhash; TYPE_1__ root; void* eligible; int defcls; int watchdog; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 struct tc_hfsc_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int qdisc_class_hash_grow (struct Qdisc*,int *) ;
 int qdisc_class_hash_init (int *) ;
 int qdisc_class_hash_insert (int *,TYPE_2__*) ;
 int * qdisc_create_dflt (int ,int *,int ,int *) ;
 int qdisc_hash_add (int *,int) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int
hfsc_init_qdisc(struct Qdisc *sch, struct nlattr *opt,
  struct netlink_ext_ack *extack)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct tc_hfsc_qopt *qopt;
 int err;

 qdisc_watchdog_init(&q->watchdog, sch);

 if (!opt || nla_len(opt) < sizeof(*qopt))
  return -EINVAL;
 qopt = nla_data(opt);

 q->defcls = qopt->defcls;
 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  return err;
 q->eligible = RB_ROOT;

 err = tcf_block_get(&q->root.block, &q->root.filter_list, sch, extack);
 if (err)
  return err;

 q->root.cl_common.classid = sch->handle;
 q->root.sched = q;
 q->root.qdisc = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
       sch->handle, ((void*)0));
 if (q->root.qdisc == ((void*)0))
  q->root.qdisc = &noop_qdisc;
 else
  qdisc_hash_add(q->root.qdisc, 1);
 INIT_LIST_HEAD(&q->root.children);
 q->root.vt_tree = RB_ROOT;
 q->root.cf_tree = RB_ROOT;

 qdisc_class_hash_insert(&q->clhash, &q->root.cl_common);
 qdisc_class_hash_grow(sch, &q->clhash);

 return 0;
}
