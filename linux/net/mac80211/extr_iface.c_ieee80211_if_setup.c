
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int priv_destructor; int * netdev_ops; int priv_flags; } ;


 int IFF_TX_SKB_SHARING ;
 int ether_setup (struct net_device*) ;
 int ieee80211_dataif_ops ;
 int ieee80211_if_free ;

__attribute__((used)) static void ieee80211_if_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->netdev_ops = &ieee80211_dataif_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ieee80211_if_free;
}
