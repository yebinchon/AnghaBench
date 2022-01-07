
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 scalar_t__ hsr_handle_frame ;
 scalar_t__ rcu_access_pointer (int ) ;

bool hsr_port_exists(const struct net_device *dev)
{
 return rcu_access_pointer(dev->rx_handler) == hsr_handle_frame;
}
