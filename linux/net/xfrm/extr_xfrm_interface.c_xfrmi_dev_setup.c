
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int broadcast; int priv_destructor; int flags; int addr_len; void* max_mtu; int min_mtu; void* mtu; void* min_header_len; void* hard_header_len; int type; int * netdev_ops; } ;


 int ARPHRD_NONE ;
 int ETH_ALEN ;
 void* ETH_DATA_LEN ;
 void* ETH_HLEN ;
 int ETH_MIN_MTU ;
 int IFF_NOARP ;
 int eth_broadcast_addr (int ) ;
 int netif_keep_dst (struct net_device*) ;
 int xfrmi_dev_free ;
 int xfrmi_netdev_ops ;

__attribute__((used)) static void xfrmi_dev_setup(struct net_device *dev)
{
 dev->netdev_ops = &xfrmi_netdev_ops;
 dev->type = ARPHRD_NONE;
 dev->hard_header_len = ETH_HLEN;
 dev->min_header_len = ETH_HLEN;
 dev->mtu = ETH_DATA_LEN;
 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = ETH_DATA_LEN;
 dev->addr_len = ETH_ALEN;
 dev->flags = IFF_NOARP;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = xfrmi_dev_free;
 netif_keep_dst(dev);

 eth_broadcast_addr(dev->broadcast);
}
