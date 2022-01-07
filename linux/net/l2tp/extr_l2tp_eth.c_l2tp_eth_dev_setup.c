
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int * netdev_ops; int features; int priv_flags; } ;


 int IFF_TX_SKB_SHARING ;
 int NETIF_F_LLTX ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int ether_setup (struct net_device*) ;
 int l2tp_eth_netdev_ops ;
 int l2tpeth_type ;

__attribute__((used)) static void l2tp_eth_dev_setup(struct net_device *dev)
{
 SET_NETDEV_DEVTYPE(dev, &l2tpeth_type);
 ether_setup(dev);
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->features |= NETIF_F_LLTX;
 dev->netdev_ops = &l2tp_eth_netdev_ops;
 dev->needs_free_netdev = 1;
}
