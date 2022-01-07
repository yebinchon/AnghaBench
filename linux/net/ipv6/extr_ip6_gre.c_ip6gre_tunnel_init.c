
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * header_ops; int broadcast; int dev_addr; } ;
struct TYPE_2__ {int raddr; int laddr; scalar_t__ collect_md; } ;
struct ip6_tnl {TYPE_1__ parms; } ;
struct in6_addr {int dummy; } ;


 int ip6gre_header_ops ;
 int ip6gre_tunnel_init_common (struct net_device*) ;
 scalar_t__ ipv6_addr_any (int *) ;
 int memcpy (int ,int *,int) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ip6gre_tunnel_init(struct net_device *dev)
{
 struct ip6_tnl *tunnel;
 int ret;

 ret = ip6gre_tunnel_init_common(dev);
 if (ret)
  return ret;

 tunnel = netdev_priv(dev);

 if (tunnel->parms.collect_md)
  return 0;

 memcpy(dev->dev_addr, &tunnel->parms.laddr, sizeof(struct in6_addr));
 memcpy(dev->broadcast, &tunnel->parms.raddr, sizeof(struct in6_addr));

 if (ipv6_addr_any(&tunnel->parms.raddr))
  dev->header_ops = &ip6gre_header_ops;

 return 0;
}
