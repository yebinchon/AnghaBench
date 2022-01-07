
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int flags; unsigned int gflags; } ;


 unsigned int IFF_ALLMULTI ;
 unsigned int IFF_PROMISC ;

__attribute__((used)) static unsigned int rtnl_dev_get_flags(const struct net_device *dev)
{
 return (dev->flags & ~(IFF_PROMISC | IFF_ALLMULTI)) |
        (dev->gflags & (IFF_PROMISC | IFF_ALLMULTI));
}
