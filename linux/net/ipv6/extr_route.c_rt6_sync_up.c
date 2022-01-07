
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned char nh_flags; } ;
struct arg_netdev_event {int nh_flags; TYPE_1__ member_1; struct net_device* dev; } ;


 unsigned char RTNH_F_DEAD ;
 int RTNH_F_LINKDOWN ;
 int dev_net (struct net_device*) ;
 int fib6_clean_all (int ,int ,struct arg_netdev_event*) ;
 int fib6_ifup ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

void rt6_sync_up(struct net_device *dev, unsigned char nh_flags)
{
 struct arg_netdev_event arg = {
  .dev = dev,
  {
   .nh_flags = nh_flags,
  },
 };

 if (nh_flags & RTNH_F_DEAD && netif_carrier_ok(dev))
  arg.nh_flags |= RTNH_F_LINKDOWN;

 fib6_clean_all(dev_net(dev), fib6_ifup, &arg);
}
