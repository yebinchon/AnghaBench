
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int features; int * ethtool_ops; int mtu; int priv_flags; int priv_destructor; int * netdev_ops; } ;


 int ETH_DATA_LEN ;
 int IFF_NO_QUEUE ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int batadv_ethtool_ops ;
 int batadv_netdev_ops ;
 int batadv_softif_free ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;

__attribute__((used)) static void batadv_softif_init_early(struct net_device *dev)
{
 ether_setup(dev);

 dev->netdev_ops = &batadv_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = batadv_softif_free;
 dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_NETNS_LOCAL;
 dev->features |= NETIF_F_LLTX;
 dev->priv_flags |= IFF_NO_QUEUE;




 dev->mtu = ETH_DATA_LEN;


 eth_hw_addr_random(dev);

 dev->ethtool_ops = &batadv_ethtool_ops;
}
