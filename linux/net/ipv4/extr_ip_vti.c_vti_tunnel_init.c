
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int addr_len; int features; int flags; int broadcast; int dev_addr; } ;
struct iphdr {int daddr; int saddr; } ;
struct TYPE_2__ {struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; } ;


 int IFF_NOARP ;
 int NETIF_F_LLTX ;
 int ip_tunnel_init (struct net_device*) ;
 int memcpy (int ,int *,int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static int vti_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct iphdr *iph = &tunnel->parms.iph;

 memcpy(dev->dev_addr, &iph->saddr, 4);
 memcpy(dev->broadcast, &iph->daddr, 4);

 dev->flags = IFF_NOARP;
 dev->addr_len = 4;
 dev->features |= NETIF_F_LLTX;
 netif_keep_dst(dev);

 return ip_tunnel_init(dev);
}
