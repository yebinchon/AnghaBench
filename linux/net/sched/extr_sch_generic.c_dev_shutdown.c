
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timer; int * qdisc; } ;


 int WARN_ON (int ) ;
 scalar_t__ dev_ingress_queue (struct net_device*) ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,scalar_t__,int *),int *) ;
 int noop_qdisc ;
 int qdisc_put (int *) ;
 int shutdown_scheduler_queue (struct net_device*,scalar_t__,int *) ;
 int timer_pending (int *) ;

void dev_shutdown(struct net_device *dev)
{
 netdev_for_each_tx_queue(dev, shutdown_scheduler_queue, &noop_qdisc);
 if (dev_ingress_queue(dev))
  shutdown_scheduler_queue(dev, dev_ingress_queue(dev), &noop_qdisc);
 qdisc_put(dev->qdisc);
 dev->qdisc = &noop_qdisc;

 WARN_ON(timer_pending(&dev->watchdog_timer));
}
