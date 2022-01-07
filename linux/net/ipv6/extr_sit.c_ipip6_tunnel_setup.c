
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int addr_len; int hw_features; int features; int flags; scalar_t__ max_mtu; int min_mtu; scalar_t__ mtu; scalar_t__ hard_header_len; int type; int priv_destructor; int * netdev_ops; } ;
struct iphdr {int dummy; } ;
struct ip_tunnel {int hlen; } ;


 int ARPHRD_SIT ;
 scalar_t__ ETH_DATA_LEN ;
 int IFF_NOARP ;
 scalar_t__ IP6_MAX_MTU ;
 int IPV6_MIN_MTU ;
 scalar_t__ LL_MAX_HEADER ;
 int NETIF_F_LLTX ;
 int SIT_FEATURES ;
 int ipip6_dev_free ;
 int ipip6_netdev_ops ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ipip6_tunnel_setup(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 int t_hlen = tunnel->hlen + sizeof(struct iphdr);

 dev->netdev_ops = &ipip6_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = ipip6_dev_free;

 dev->type = ARPHRD_SIT;
 dev->hard_header_len = LL_MAX_HEADER + t_hlen;
 dev->mtu = ETH_DATA_LEN - t_hlen;
 dev->min_mtu = IPV6_MIN_MTU;
 dev->max_mtu = IP6_MAX_MTU - t_hlen;
 dev->flags = IFF_NOARP;
 netif_keep_dst(dev);
 dev->addr_len = 4;
 dev->features |= NETIF_F_LLTX;
 dev->features |= SIT_FEATURES;
 dev->hw_features |= SIT_FEATURES;
}
