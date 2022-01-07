
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct Qdisc_ops {int dummy; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int ENOMEM ;
 struct Qdisc* ERR_PTR (int) ;
 int TC_H_MAKE (int ,int) ;
 int fifo_set_limit (struct Qdisc*,unsigned int) ;
 struct Qdisc* qdisc_create_dflt (int ,struct Qdisc_ops*,int ,struct netlink_ext_ack*) ;
 int qdisc_put (struct Qdisc*) ;

struct Qdisc *fifo_create_dflt(struct Qdisc *sch, struct Qdisc_ops *ops,
          unsigned int limit,
          struct netlink_ext_ack *extack)
{
 struct Qdisc *q;
 int err = -ENOMEM;

 q = qdisc_create_dflt(sch->dev_queue, ops, TC_H_MAKE(sch->handle, 1),
         extack);
 if (q) {
  err = fifo_set_limit(q, limit);
  if (err < 0) {
   qdisc_put(q);
   q = ((void*)0);
  }
 }

 return q ? : ERR_PTR(err);
}
