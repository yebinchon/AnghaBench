
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {int q; } ;
struct TYPE_4__ {int classid; } ;
struct htb_class {TYPE_1__ leaf; TYPE_2__ common; scalar_t__ level; } ;
struct Qdisc {int dev_queue; } ;


 int EINVAL ;
 int ENOBUFS ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,struct netlink_ext_ack*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int htb_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct htb_class *cl = (struct htb_class *)arg;

 if (cl->level)
  return -EINVAL;
 if (new == ((void*)0) &&
     (new = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
         cl->common.classid, extack)) == ((void*)0))
  return -ENOBUFS;

 *old = qdisc_replace(sch, new, &cl->leaf.q);
 return 0;
}
