
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* rtnl_link_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net* (* get_link_net ) (struct net_device const*) ;} ;


 struct net* stub1 (struct net_device const*) ;

__attribute__((used)) static struct net *batadv_getlink_net(const struct net_device *netdev,
          struct net *fallback_net)
{
 if (!netdev->rtnl_link_ops)
  return fallback_net;

 if (!netdev->rtnl_link_ops->get_link_net)
  return fallback_net;

 return netdev->rtnl_link_ops->get_link_net(netdev);
}
