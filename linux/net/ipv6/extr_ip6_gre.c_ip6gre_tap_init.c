
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int ip6gre_tunnel_init_common (struct net_device*) ;

__attribute__((used)) static int ip6gre_tap_init(struct net_device *dev)
{
 int ret;

 ret = ip6gre_tunnel_init_common(dev);
 if (ret)
  return ret;

 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

 return 0;
}
