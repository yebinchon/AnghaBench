
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; unsigned int num_tx_queues; int * _tx; } ;


 int IFF_UP ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 int qdisc_change_tx_queue_len (struct net_device*,int *) ;

int dev_qdisc_change_tx_queue_len(struct net_device *dev)
{
 bool up = dev->flags & IFF_UP;
 unsigned int i;
 int ret = 0;

 if (up)
  dev_deactivate(dev);

 for (i = 0; i < dev->num_tx_queues; i++) {
  ret = qdisc_change_tx_queue_len(dev, &dev->_tx[i]);


  if (ret)
   break;
 }

 if (up)
  dev_activate(dev);
 return ret;
}
