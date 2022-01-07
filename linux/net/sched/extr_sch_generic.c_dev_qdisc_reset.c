
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;


 int qdisc_reset (struct Qdisc*) ;

__attribute__((used)) static void dev_qdisc_reset(struct net_device *dev,
       struct netdev_queue *dev_queue,
       void *none)
{
 struct Qdisc *qdisc = dev_queue->qdisc_sleeping;

 if (qdisc)
  qdisc_reset(qdisc);
}
