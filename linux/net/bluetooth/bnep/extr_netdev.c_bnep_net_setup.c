
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int * netdev_ops; int priv_flags; int max_mtu; scalar_t__ min_mtu; int addr_len; int broadcast; } ;


 int ETH_ALEN ;
 int ETH_MAX_MTU ;
 int HZ ;
 int IFF_TX_SKB_SHARING ;
 int bnep_netdev_ops ;
 int eth_broadcast_addr (int ) ;
 int ether_setup (struct net_device*) ;

void bnep_net_setup(struct net_device *dev)
{

 eth_broadcast_addr(dev->broadcast);
 dev->addr_len = ETH_ALEN;

 ether_setup(dev);
 dev->min_mtu = 0;
 dev->max_mtu = ETH_MAX_MTU;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->netdev_ops = &bnep_netdev_ops;

 dev->watchdog_timeo = HZ * 2;
}
