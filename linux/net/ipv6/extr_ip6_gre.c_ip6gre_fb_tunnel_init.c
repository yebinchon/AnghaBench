
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct ip6_tnl {int hlen; TYPE_1__ parms; int net; struct net_device* dev; } ;


 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ip6gre_fb_tunnel_init(struct net_device *dev)
{
 struct ip6_tnl *tunnel = netdev_priv(dev);

 tunnel->dev = dev;
 tunnel->net = dev_net(dev);
 strcpy(tunnel->parms.name, dev->name);

 tunnel->hlen = sizeof(struct ipv6hdr) + 4;

 dev_hold(dev);
}
