
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifinfomsg {unsigned int ifi_flags; int ifi_change; } ;


 unsigned int rtnl_dev_get_flags (struct net_device const*) ;

__attribute__((used)) static unsigned int rtnl_dev_combine_flags(const struct net_device *dev,
        const struct ifinfomsg *ifm)
{
 unsigned int flags = ifm->ifi_flags;


 if (ifm->ifi_change)
  flags = (flags & ifm->ifi_change) |
   (rtnl_dev_get_flags(dev) & ~ifm->ifi_change);

 return flags;
}
