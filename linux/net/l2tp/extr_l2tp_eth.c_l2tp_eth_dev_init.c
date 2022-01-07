
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int broadcast; } ;


 int eth_broadcast_addr (int ) ;
 int eth_hw_addr_random (struct net_device*) ;

__attribute__((used)) static int l2tp_eth_dev_init(struct net_device *dev)
{
 eth_hw_addr_random(dev);
 eth_broadcast_addr(dev->broadcast);

 return 0;
}
