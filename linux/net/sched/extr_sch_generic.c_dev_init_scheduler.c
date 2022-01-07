
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timer; int * qdisc; } ;


 scalar_t__ dev_ingress_queue (struct net_device*) ;
 int dev_init_scheduler_queue (struct net_device*,scalar_t__,int *) ;
 int dev_watchdog ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,scalar_t__,int *),int *) ;
 int noop_qdisc ;
 int timer_setup (int *,int ,int ) ;

void dev_init_scheduler(struct net_device *dev)
{
 dev->qdisc = &noop_qdisc;
 netdev_for_each_tx_queue(dev, dev_init_scheduler_queue, &noop_qdisc);
 if (dev_ingress_queue(dev))
  dev_init_scheduler_queue(dev, dev_ingress_queue(dev), &noop_qdisc);

 timer_setup(&dev->watchdog_timer, dev_watchdog, 0);
}
