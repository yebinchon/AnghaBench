
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ xfrm; } ;
struct TYPE_6__ {struct inet6_dev* rt6i_idev; } ;
struct TYPE_5__ {TYPE_3__ dst; TYPE_2__ rt6; } ;
struct xfrm_dst {TYPE_1__ u; } ;
struct net_device {int dummy; } ;
struct inet6_dev {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_8__ {int loopback_dev; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 TYPE_4__* dev_net (struct net_device*) ;
 struct inet6_dev* in6_dev_get (int ) ;
 int in6_dev_hold (struct inet6_dev*) ;
 int in6_dev_put (struct inet6_dev*) ;
 scalar_t__ xfrm_dst_child (TYPE_3__*) ;
 int xfrm_dst_ifdown (struct dst_entry*,struct net_device*) ;

__attribute__((used)) static void xfrm6_dst_ifdown(struct dst_entry *dst, struct net_device *dev,
        int unregister)
{
 struct xfrm_dst *xdst;

 if (!unregister)
  return;

 xdst = (struct xfrm_dst *)dst;
 if (xdst->u.rt6.rt6i_idev->dev == dev) {
  struct inet6_dev *loopback_idev =
   in6_dev_get(dev_net(dev)->loopback_dev);

  do {
   in6_dev_put(xdst->u.rt6.rt6i_idev);
   xdst->u.rt6.rt6i_idev = loopback_idev;
   in6_dev_hold(loopback_idev);
   xdst = (struct xfrm_dst *)xfrm_dst_child(&xdst->u.dst);
  } while (xdst->u.dst.xfrm);

  __in6_dev_put(loopback_idev);
 }

 xfrm_dst_ifdown(dst, dev);
}
