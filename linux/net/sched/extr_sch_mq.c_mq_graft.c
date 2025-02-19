
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long queue; int child_handle; } ;
struct tc_mq_qopt_offload {int command; TYPE_1__ graft_params; int handle; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int flags; } ;
struct Qdisc {int flags; int handle; } ;


 int IFF_UP ;
 int TCQ_F_NOPARENT ;
 int TCQ_F_ONETXQUEUE ;
 int TC_MQ_GRAFT ;
 int TC_SETUP_QDISC_MQ ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 struct Qdisc* dev_graft_qdisc (struct netdev_queue*,struct Qdisc*) ;
 struct netdev_queue* mq_queue_get (struct Qdisc*,unsigned long) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 int qdisc_offload_graft_helper (struct net_device*,struct Qdisc*,struct Qdisc*,struct Qdisc*,int ,struct tc_mq_qopt_offload*,struct netlink_ext_ack*) ;

__attribute__((used)) static int mq_graft(struct Qdisc *sch, unsigned long cl, struct Qdisc *new,
      struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct netdev_queue *dev_queue = mq_queue_get(sch, cl);
 struct tc_mq_qopt_offload graft_offload;
 struct net_device *dev = qdisc_dev(sch);

 if (dev->flags & IFF_UP)
  dev_deactivate(dev);

 *old = dev_graft_qdisc(dev_queue, new);
 if (new)
  new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
 if (dev->flags & IFF_UP)
  dev_activate(dev);

 graft_offload.handle = sch->handle;
 graft_offload.graft_params.queue = cl - 1;
 graft_offload.graft_params.child_handle = new ? new->handle : 0;
 graft_offload.command = TC_MQ_GRAFT;

 qdisc_offload_graft_helper(qdisc_dev(sch), sch, new, *old,
       TC_SETUP_QDISC_MQ, &graft_offload, extack);
 return 0;
}
