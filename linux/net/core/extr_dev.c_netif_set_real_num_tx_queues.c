
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int real_num_tx_queues; unsigned int num_tx_queues; scalar_t__ reg_state; scalar_t__ num_tc; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 scalar_t__ NETREG_REGISTERED ;
 scalar_t__ NETREG_UNREGISTERING ;
 int netdev_queue_update_kobjects (struct net_device*,unsigned int,unsigned int) ;
 int netif_reset_xps_queues_gt (struct net_device*,unsigned int) ;
 int netif_setup_tc (struct net_device*,unsigned int) ;
 int qdisc_reset_all_tx_gt (struct net_device*,unsigned int) ;
 int synchronize_net () ;

int netif_set_real_num_tx_queues(struct net_device *dev, unsigned int txq)
{
 bool disabling;
 int rc;

 disabling = txq < dev->real_num_tx_queues;

 if (txq < 1 || txq > dev->num_tx_queues)
  return -EINVAL;

 if (dev->reg_state == NETREG_REGISTERED ||
     dev->reg_state == NETREG_UNREGISTERING) {
  ASSERT_RTNL();

  rc = netdev_queue_update_kobjects(dev, dev->real_num_tx_queues,
        txq);
  if (rc)
   return rc;

  if (dev->num_tc)
   netif_setup_tc(dev, txq);

  dev->real_num_tx_queues = txq;

  if (disabling) {
   synchronize_net();
   qdisc_reset_all_tx_gt(dev, txq);



  }
 } else {
  dev->real_num_tx_queues = txq;
 }

 return 0;
}
