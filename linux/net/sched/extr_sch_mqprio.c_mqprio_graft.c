
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int flags; } ;
struct Qdisc {int flags; } ;


 int EINVAL ;
 int IFF_UP ;
 int TCQ_F_NOPARENT ;
 int TCQ_F_ONETXQUEUE ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 struct Qdisc* dev_graft_qdisc (struct netdev_queue*,struct Qdisc*) ;
 struct netdev_queue* mqprio_queue_get (struct Qdisc*,unsigned long) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int mqprio_graft(struct Qdisc *sch, unsigned long cl, struct Qdisc *new,
   struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct net_device *dev = qdisc_dev(sch);
 struct netdev_queue *dev_queue = mqprio_queue_get(sch, cl);

 if (!dev_queue)
  return -EINVAL;

 if (dev->flags & IFF_UP)
  dev_deactivate(dev);

 *old = dev_graft_qdisc(dev_queue, new);

 if (new)
  new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;

 if (dev->flags & IFF_UP)
  dev_activate(dev);

 return 0;
}
