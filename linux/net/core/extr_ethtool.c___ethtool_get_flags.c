
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int ETH_FLAG_LRO ;
 int ETH_FLAG_NTUPLE ;
 int ETH_FLAG_RXHASH ;
 int ETH_FLAG_RXVLAN ;
 int ETH_FLAG_TXVLAN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LRO ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXHASH ;

__attribute__((used)) static u32 __ethtool_get_flags(struct net_device *dev)
{
 u32 flags = 0;

 if (dev->features & NETIF_F_LRO)
  flags |= ETH_FLAG_LRO;
 if (dev->features & NETIF_F_HW_VLAN_CTAG_RX)
  flags |= ETH_FLAG_RXVLAN;
 if (dev->features & NETIF_F_HW_VLAN_CTAG_TX)
  flags |= ETH_FLAG_TXVLAN;
 if (dev->features & NETIF_F_NTUPLE)
  flags |= ETH_FLAG_NTUPLE;
 if (dev->features & NETIF_F_RXHASH)
  flags |= ETH_FLAG_RXHASH;

 return flags;
}
