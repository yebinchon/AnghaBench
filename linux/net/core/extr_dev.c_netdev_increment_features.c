
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdev_features_t ;


 int NETIF_F_ALL_FOR_ALL ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_ONE_FOR_ALL ;
 int NETIF_F_VLAN_CHALLENGED ;

netdev_features_t netdev_increment_features(netdev_features_t all,
 netdev_features_t one, netdev_features_t mask)
{
 if (mask & NETIF_F_HW_CSUM)
  mask |= NETIF_F_CSUM_MASK;
 mask |= NETIF_F_VLAN_CHALLENGED;

 all |= one & (NETIF_F_ONE_FOR_ALL | NETIF_F_CSUM_MASK) & mask;
 all &= one | ~NETIF_F_ALL_FOR_ALL;


 if (all & NETIF_F_HW_CSUM)
  all &= ~(NETIF_F_CSUM_MASK & ~NETIF_F_HW_CSUM);

 return all;
}
