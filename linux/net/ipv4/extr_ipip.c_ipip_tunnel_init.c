
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int broadcast; int dev_addr; } ;
struct TYPE_3__ {int daddr; int saddr; } ;
struct TYPE_4__ {TYPE_1__ iph; } ;
struct ip_tunnel {scalar_t__ encap_hlen; scalar_t__ tun_hlen; scalar_t__ hlen; TYPE_2__ parms; } ;


 int ip_tunnel_init (struct net_device*) ;
 int memcpy (int ,int *,int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipip_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 memcpy(dev->dev_addr, &tunnel->parms.iph.saddr, 4);
 memcpy(dev->broadcast, &tunnel->parms.iph.daddr, 4);

 tunnel->tun_hlen = 0;
 tunnel->hlen = tunnel->tun_hlen + tunnel->encap_hlen;
 return ip_tunnel_init(dev);
}
