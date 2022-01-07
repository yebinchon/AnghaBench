
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dummy; } ;


 int BROPT_MULTICAST_ENABLED ;
 int br_opt_get (struct net_bridge*,int ) ;
 struct net_bridge* netdev_priv (struct net_device const*) ;

bool br_multicast_enabled(const struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);

 return !!br_opt_get(br, BROPT_MULTICAST_ENABLED);
}
