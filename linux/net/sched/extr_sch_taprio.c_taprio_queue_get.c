
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct net_device {unsigned long num_tx_queues; } ;
struct Qdisc {int dummy; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned long) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static struct netdev_queue *taprio_queue_get(struct Qdisc *sch,
          unsigned long cl)
{
 struct net_device *dev = qdisc_dev(sch);
 unsigned long ntx = cl - 1;

 if (ntx >= dev->num_tx_queues)
  return ((void*)0);

 return netdev_get_tx_queue(dev, ntx);
}
