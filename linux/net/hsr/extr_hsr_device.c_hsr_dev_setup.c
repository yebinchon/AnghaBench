
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int hw_features; int features; int priv_flags; int * netdev_ops; int * header_ops; scalar_t__ min_mtu; } ;


 int IFF_NO_QUEUE ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_GSO_MASK ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int NETIF_F_SG ;
 int NETIF_F_VLAN_CHALLENGED ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 int hsr_device_ops ;
 int hsr_header_ops ;
 int hsr_type ;

void hsr_dev_setup(struct net_device *dev)
{
 eth_hw_addr_random(dev);

 ether_setup(dev);
 dev->min_mtu = 0;
 dev->header_ops = &hsr_header_ops;
 dev->netdev_ops = &hsr_device_ops;
 SET_NETDEV_DEVTYPE(dev, &hsr_type);
 dev->priv_flags |= IFF_NO_QUEUE;

 dev->needs_free_netdev = 1;

 dev->hw_features = NETIF_F_SG | NETIF_F_FRAGLIST | NETIF_F_HIGHDMA |
      NETIF_F_GSO_MASK | NETIF_F_HW_CSUM |
      NETIF_F_HW_VLAN_CTAG_TX;

 dev->features = dev->hw_features;


 dev->features |= NETIF_F_LLTX;



 dev->features |= NETIF_F_VLAN_CHALLENGED;



 dev->features |= NETIF_F_NETNS_LOCAL;
}
