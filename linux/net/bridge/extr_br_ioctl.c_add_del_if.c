
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int dev; } ;
struct net {int user_ns; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 struct net_device* __dev_get_by_index (struct net*,int) ;
 int br_add_if (struct net_bridge*,struct net_device*,int *) ;
 int br_del_if (struct net_bridge*,struct net_device*) ;
 struct net* dev_net (int ) ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
{
 struct net *net = dev_net(br->dev);
 struct net_device *dev;
 int ret;

 if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
  return -EPERM;

 dev = __dev_get_by_index(net, ifindex);
 if (dev == ((void*)0))
  return -EINVAL;

 if (isadd)
  ret = br_add_if(br, dev, ((void*)0));
 else
  ret = br_del_if(br, dev);

 return ret;
}
