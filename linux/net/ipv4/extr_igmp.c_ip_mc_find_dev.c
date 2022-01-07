
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct net_device* dev; } ;
struct rtable {TYPE_3__ dst; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_2__ imr_multiaddr; TYPE_1__ imr_address; } ;
struct in_device {int dummy; } ;


 int IS_ERR (struct rtable*) ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 struct net_device* __ip_dev_find (struct net*,scalar_t__,int) ;
 struct in_device* inetdev_by_index (struct net*,int ) ;
 struct rtable* ip_route_output (struct net*,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;

__attribute__((used)) static struct in_device *ip_mc_find_dev(struct net *net, struct ip_mreqn *imr)
{
 struct net_device *dev = ((void*)0);
 struct in_device *idev = ((void*)0);

 if (imr->imr_ifindex) {
  idev = inetdev_by_index(net, imr->imr_ifindex);
  return idev;
 }
 if (imr->imr_address.s_addr) {
  dev = __ip_dev_find(net, imr->imr_address.s_addr, 0);
  if (!dev)
   return ((void*)0);
 }

 if (!dev) {
  struct rtable *rt = ip_route_output(net,
          imr->imr_multiaddr.s_addr,
          0, 0, 0);
  if (!IS_ERR(rt)) {
   dev = rt->dst.dev;
   ip_rt_put(rt);
  }
 }
 if (dev) {
  imr->imr_ifindex = dev->ifindex;
  idev = __in_dev_get_rtnl(dev);
 }
 return idev;
}
