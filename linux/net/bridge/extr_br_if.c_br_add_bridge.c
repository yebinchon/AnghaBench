
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * rtnl_link_ops; } ;
struct net_bridge {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char const*,int ,int ) ;
 int br_dev_setup ;
 int br_link_ops ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int register_netdev (struct net_device*) ;

int br_add_bridge(struct net *net, const char *name)
{
 struct net_device *dev;
 int res;

 dev = alloc_netdev(sizeof(struct net_bridge), name, NET_NAME_UNKNOWN,
      br_dev_setup);

 if (!dev)
  return -ENOMEM;

 dev_net_set(dev, net);
 dev->rtnl_link_ops = &br_link_ops;

 res = register_netdev(dev);
 if (res)
  free_netdev(dev);
 return res;
}
