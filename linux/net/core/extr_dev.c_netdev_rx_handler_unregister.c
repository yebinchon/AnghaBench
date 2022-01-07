
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; int rx_handler; } ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int synchronize_net () ;

void netdev_rx_handler_unregister(struct net_device *dev)
{

 ASSERT_RTNL();
 RCU_INIT_POINTER(dev->rx_handler, ((void*)0));




 synchronize_net();
 RCU_INIT_POINTER(dev->rx_handler_data, ((void*)0));
}
