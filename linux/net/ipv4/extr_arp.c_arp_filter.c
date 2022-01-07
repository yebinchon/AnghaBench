
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct rtable*) ;
 int LINUX_MIB_ARPFILTER ;
 int __NET_INC_STATS (struct net*,int ) ;
 struct net* dev_net (struct net_device*) ;
 struct rtable* ip_route_output (struct net*,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int l3mdev_master_ifindex_rcu (struct net_device*) ;

__attribute__((used)) static int arp_filter(__be32 sip, __be32 tip, struct net_device *dev)
{
 struct rtable *rt;
 int flag = 0;

 struct net *net = dev_net(dev);

 rt = ip_route_output(net, sip, tip, 0, l3mdev_master_ifindex_rcu(dev));
 if (IS_ERR(rt))
  return 1;
 if (rt->dst.dev != dev) {
  __NET_INC_STATS(net, LINUX_MIB_ARPFILTER);
  flag = 1;
 }
 ip_rt_put(rt);
 return flag;
}
