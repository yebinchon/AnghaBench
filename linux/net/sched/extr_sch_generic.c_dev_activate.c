
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * qdisc; } ;


 int attach_default_qdiscs (struct net_device*) ;
 scalar_t__ dev_ingress_queue (struct net_device*) ;
 int dev_watchdog_up (struct net_device*) ;
 int netdev_for_each_tx_queue (struct net_device*,int (*) (struct net_device*,scalar_t__,int *),int*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int noop_qdisc ;
 int transition_one_qdisc (struct net_device*,scalar_t__,int *) ;

void dev_activate(struct net_device *dev)
{
 int need_watchdog;






 if (dev->qdisc == &noop_qdisc)
  attach_default_qdiscs(dev);

 if (!netif_carrier_ok(dev))

  return;

 need_watchdog = 0;
 netdev_for_each_tx_queue(dev, transition_one_qdisc, &need_watchdog);
 if (dev_ingress_queue(dev))
  transition_one_qdisc(dev, dev_ingress_queue(dev), ((void*)0));

 if (need_watchdog) {
  netif_trans_update(dev);
  dev_watchdog_up(dev);
 }
}
