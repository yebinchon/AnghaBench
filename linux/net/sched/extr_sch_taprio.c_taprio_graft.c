
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {struct Qdisc** qdiscs; } ;
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
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 struct netdev_queue* taprio_queue_get (struct Qdisc*,unsigned long) ;

__attribute__((used)) static int taprio_graft(struct Qdisc *sch, unsigned long cl,
   struct Qdisc *new, struct Qdisc **old,
   struct netlink_ext_ack *extack)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);

 if (!dev_queue)
  return -EINVAL;

 if (dev->flags & IFF_UP)
  dev_deactivate(dev);

 *old = q->qdiscs[cl - 1];
 q->qdiscs[cl - 1] = new;

 if (new)
  new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;

 if (dev->flags & IFF_UP)
  dev_activate(dev);

 return 0;
}
