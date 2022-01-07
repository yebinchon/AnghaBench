
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int needs_free_netdev; int broadcast; int max_mtu; scalar_t__ min_mtu; int * ethtool_ops; int priv_destructor; int * netdev_ops; } ;


 int ETH_MAX_MTU ;
 int IFF_802_1Q_VLAN ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int eth_zero_addr (int ) ;
 int ether_setup (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;
 int vlan_dev_free ;
 int vlan_ethtool_ops ;
 int vlan_netdev_ops ;

void vlan_setup(struct net_device *dev)
{
 ether_setup(dev);

 dev->priv_flags |= IFF_802_1Q_VLAN | IFF_NO_QUEUE;
 dev->priv_flags |= IFF_UNICAST_FLT;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 netif_keep_dst(dev);

 dev->netdev_ops = &vlan_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = vlan_dev_free;
 dev->ethtool_ops = &vlan_ethtool_ops;

 dev->min_mtu = 0;
 dev->max_mtu = ETH_MAX_MTU;

 eth_zero_addr(dev->broadcast);
}
