
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; int tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {TYPE_1__* qdisc_sleeping; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int TC_H_MIN (unsigned long) ;
 int TC_H_ROOT ;
 struct netdev_queue* taprio_queue_get (struct Qdisc*,unsigned long) ;

__attribute__((used)) static int taprio_dump_class(struct Qdisc *sch, unsigned long cl,
        struct sk_buff *skb, struct tcmsg *tcm)
{
 struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);

 tcm->tcm_parent = TC_H_ROOT;
 tcm->tcm_handle |= TC_H_MIN(cl);
 tcm->tcm_info = dev_queue->qdisc_sleeping->handle;

 return 0;
}
