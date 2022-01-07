
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 int ASSERT_RTNL () ;
 scalar_t__ rtnl_dereference (int ) ;

bool netdev_is_rx_handler_busy(struct net_device *dev)
{
 ASSERT_RTNL();
 return dev && rtnl_dereference(dev->rx_handler);
}
