
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_handle; scalar_t__ tcm_info; int tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {TYPE_1__* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int handle; } ;
struct TYPE_2__ {scalar_t__ handle; } ;


 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int ) ;
 int TC_H_MIN (unsigned long) ;
 unsigned long TC_H_MIN_PRIORITY ;
 int TC_H_ROOT ;
 struct netdev_queue* mqprio_queue_get (struct Qdisc*,unsigned long) ;
 int netdev_txq_to_tc (struct net_device*,unsigned long) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int mqprio_dump_class(struct Qdisc *sch, unsigned long cl,
    struct sk_buff *skb, struct tcmsg *tcm)
{
 if (cl < TC_H_MIN_PRIORITY) {
  struct netdev_queue *dev_queue = mqprio_queue_get(sch, cl);
  struct net_device *dev = qdisc_dev(sch);
  int tc = netdev_txq_to_tc(dev, cl - 1);

  tcm->tcm_parent = (tc < 0) ? 0 :
   TC_H_MAKE(TC_H_MAJ(sch->handle),
      TC_H_MIN(tc + TC_H_MIN_PRIORITY));
  tcm->tcm_info = dev_queue->qdisc_sleeping->handle;
 } else {
  tcm->tcm_parent = TC_H_ROOT;
  tcm->tcm_info = 0;
 }
 tcm->tcm_handle |= TC_H_MIN(cl);
 return 0;
}
