
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int classid; } ;
struct drr_class {int qdisc; TYPE_1__ common; } ;
struct Qdisc {int dev_queue; } ;


 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,int *) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int drr_graft_class(struct Qdisc *sch, unsigned long arg,
      struct Qdisc *new, struct Qdisc **old,
      struct netlink_ext_ack *extack)
{
 struct drr_class *cl = (struct drr_class *)arg;

 if (new == ((void*)0)) {
  new = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
     cl->common.classid, ((void*)0));
  if (new == ((void*)0))
   new = &noop_qdisc;
 }

 *old = qdisc_replace(sch, new, &cl->qdisc);
 return 0;
}
