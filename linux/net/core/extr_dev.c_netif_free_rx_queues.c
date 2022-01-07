
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int num_rx_queues; TYPE_1__* _rx; } ;
struct TYPE_2__ {int xdp_rxq; } ;


 int kvfree (TYPE_1__*) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static void netif_free_rx_queues(struct net_device *dev)
{
 unsigned int i, count = dev->num_rx_queues;


 if (!dev->_rx)
  return;

 for (i = 0; i < count; i++)
  xdp_rxq_info_unreg(&dev->_rx[i].xdp_rxq);

 kvfree(dev->_rx);
}
