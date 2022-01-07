
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int rx_handler; int rx_handler_data; } ;
typedef void rx_handler_func_t ;


 int EBUSY ;
 int EINVAL ;
 int IFF_NO_RX_HANDLER ;
 scalar_t__ netdev_is_rx_handler_busy (struct net_device*) ;
 int rcu_assign_pointer (int ,void*) ;

int netdev_rx_handler_register(struct net_device *dev,
          rx_handler_func_t *rx_handler,
          void *rx_handler_data)
{
 if (netdev_is_rx_handler_busy(dev))
  return -EBUSY;

 if (dev->priv_flags & IFF_NO_RX_HANDLER)
  return -EINVAL;


 rcu_assign_pointer(dev->rx_handler_data, rx_handler_data);
 rcu_assign_pointer(dev->rx_handler, rx_handler);

 return 0;
}
