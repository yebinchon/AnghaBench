
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {struct inet6_dev* rt6i_idev; } ;
struct net_device {int dummy; } ;
struct inet6_dev {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;


 TYPE_1__* dev_net (struct net_device*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;

__attribute__((used)) static void ip6_dst_ifdown(struct dst_entry *dst, struct net_device *dev,
      int how)
{
 struct rt6_info *rt = (struct rt6_info *)dst;
 struct inet6_dev *idev = rt->rt6i_idev;
 struct net_device *loopback_dev =
  dev_net(dev)->loopback_dev;

 if (idev && idev->dev != loopback_dev) {
  struct inet6_dev *loopback_idev = in6_dev_get(loopback_dev);
  if (loopback_idev) {
   rt->rt6i_idev = loopback_idev;
   in6_dev_put(idev);
  }
 }
}
