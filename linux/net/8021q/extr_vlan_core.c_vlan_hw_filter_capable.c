
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_STAG_FILTER ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static bool vlan_hw_filter_capable(const struct net_device *dev, __be16 proto)
{
 if (proto == htons(ETH_P_8021Q) &&
     dev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
  return 1;
 if (proto == htons(ETH_P_8021AD) &&
     dev->features & NETIF_F_HW_VLAN_STAG_FILTER)
  return 1;
 return 0;
}
