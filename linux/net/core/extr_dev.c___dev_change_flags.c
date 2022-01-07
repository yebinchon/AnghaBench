
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {unsigned int flags; unsigned int gflags; } ;


 int ASSERT_RTNL () ;
 unsigned int IFF_ALLMULTI ;
 unsigned int IFF_AUTOMEDIA ;
 unsigned int IFF_DEBUG ;
 unsigned int IFF_DYNAMIC ;
 unsigned int IFF_MULTICAST ;
 unsigned int IFF_NOARP ;
 unsigned int IFF_NOTRAILERS ;
 unsigned int IFF_PORTSEL ;
 unsigned int IFF_PROMISC ;
 unsigned int IFF_UP ;
 unsigned int IFF_VOLATILE ;
 int __dev_close (struct net_device*) ;
 int __dev_open (struct net_device*,struct netlink_ext_ack*) ;
 int __dev_set_allmulti (struct net_device*,int,int) ;
 scalar_t__ __dev_set_promiscuity (struct net_device*,int,int) ;
 int dev_change_rx_flags (struct net_device*,unsigned int) ;
 int dev_set_rx_mode (struct net_device*) ;

int __dev_change_flags(struct net_device *dev, unsigned int flags,
         struct netlink_ext_ack *extack)
{
 unsigned int old_flags = dev->flags;
 int ret;

 ASSERT_RTNL();





 dev->flags = (flags & (IFF_DEBUG | IFF_NOTRAILERS | IFF_NOARP |
          IFF_DYNAMIC | IFF_MULTICAST | IFF_PORTSEL |
          IFF_AUTOMEDIA)) |
       (dev->flags & (IFF_UP | IFF_VOLATILE | IFF_PROMISC |
        IFF_ALLMULTI));





 if ((old_flags ^ flags) & IFF_MULTICAST)
  dev_change_rx_flags(dev, IFF_MULTICAST);

 dev_set_rx_mode(dev);







 ret = 0;
 if ((old_flags ^ flags) & IFF_UP) {
  if (old_flags & IFF_UP)
   __dev_close(dev);
  else
   ret = __dev_open(dev, extack);
 }

 if ((flags ^ dev->gflags) & IFF_PROMISC) {
  int inc = (flags & IFF_PROMISC) ? 1 : -1;
  unsigned int old_flags = dev->flags;

  dev->gflags ^= IFF_PROMISC;

  if (__dev_set_promiscuity(dev, inc, 0) >= 0)
   if (dev->flags != old_flags)
    dev_set_rx_mode(dev);
 }





 if ((flags ^ dev->gflags) & IFF_ALLMULTI) {
  int inc = (flags & IFF_ALLMULTI) ? 1 : -1;

  dev->gflags ^= IFF_ALLMULTI;
  __dev_set_allmulti(dev, inc, 0);
 }

 return ret;
}
