
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {TYPE_1__* netdev_ops; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* ndo_vlan_rx_kill_vid ) (struct net_device*,int ,int ) ;} ;


 int ENODEV ;
 scalar_t__ netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,int ,int ) ;
 int vlan_hw_filter_capable (struct net_device*,int ) ;

__attribute__((used)) static int vlan_kill_rx_filter_info(struct net_device *dev, __be16 proto, u16 vid)
{
 if (!vlan_hw_filter_capable(dev, proto))
  return 0;

 if (netif_device_present(dev))
  return dev->netdev_ops->ndo_vlan_rx_kill_vid(dev, proto, vid);
 else
  return -ENODEV;
}
