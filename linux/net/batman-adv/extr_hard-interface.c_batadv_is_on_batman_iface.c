
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;


 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 struct net* batadv_getlink_net (struct net_device const*,struct net*) ;
 scalar_t__ batadv_mutual_parents (struct net_device const*,struct net*,struct net_device*,struct net*) ;
 scalar_t__ batadv_softif_is_valid (struct net_device const*) ;
 scalar_t__ dev_get_iflink (struct net_device const*) ;
 struct net* dev_net (struct net_device const*) ;
 int pr_err (char*) ;

__attribute__((used)) static bool batadv_is_on_batman_iface(const struct net_device *net_dev)
{
 struct net *net = dev_net(net_dev);
 struct net_device *parent_dev;
 struct net *parent_net;
 bool ret;


 if (batadv_softif_is_valid(net_dev))
  return 1;


 if (dev_get_iflink(net_dev) == 0 ||
     dev_get_iflink(net_dev) == net_dev->ifindex)
  return 0;

 parent_net = batadv_getlink_net(net_dev, net);


 parent_dev = __dev_get_by_index((struct net *)parent_net,
     dev_get_iflink(net_dev));

 if (!parent_dev) {
  pr_err("Cannot find parent device\n");
  return 0;
 }

 if (batadv_mutual_parents(net_dev, net, parent_dev, parent_net))
  return 0;

 ret = batadv_is_on_batman_iface(parent_dev);

 return ret;
}
