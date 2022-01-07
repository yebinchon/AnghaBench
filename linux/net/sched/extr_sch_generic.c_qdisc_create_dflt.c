
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct Qdisc_ops {scalar_t__ (* init ) (struct Qdisc*,int *,struct netlink_ext_ack*) ;int owner; } ;
struct Qdisc {unsigned int parent; } ;


 scalar_t__ IS_ERR (struct Qdisc*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int module_put (int ) ;
 struct Qdisc* qdisc_alloc (struct netdev_queue*,struct Qdisc_ops const*,struct netlink_ext_ack*) ;
 int qdisc_put (struct Qdisc*) ;
 scalar_t__ stub1 (struct Qdisc*,int *,struct netlink_ext_ack*) ;
 int try_module_get (int ) ;

struct Qdisc *qdisc_create_dflt(struct netdev_queue *dev_queue,
    const struct Qdisc_ops *ops,
    unsigned int parentid,
    struct netlink_ext_ack *extack)
{
 struct Qdisc *sch;

 if (!try_module_get(ops->owner)) {
  NL_SET_ERR_MSG(extack, "Failed to increase module reference counter");
  return ((void*)0);
 }

 sch = qdisc_alloc(dev_queue, ops, extack);
 if (IS_ERR(sch)) {
  module_put(ops->owner);
  return ((void*)0);
 }
 sch->parent = parentid;

 if (!ops->init || ops->init(sch, ((void*)0), extack) == 0)
  return sch;

 qdisc_put(sch);
 return ((void*)0);
}
