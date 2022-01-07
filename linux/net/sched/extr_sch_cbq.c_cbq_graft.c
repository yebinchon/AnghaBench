
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int classid; } ;
struct cbq_class {int q; TYPE_1__ common; } ;
struct Qdisc {int dev_queue; } ;


 int ENOBUFS ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,struct netlink_ext_ack*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int cbq_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct cbq_class *cl = (struct cbq_class *)arg;

 if (new == ((void*)0)) {
  new = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
     cl->common.classid, extack);
  if (new == ((void*)0))
   return -ENOBUFS;
 }

 *old = qdisc_replace(sch, new, &cl->q);
 return 0;
}
