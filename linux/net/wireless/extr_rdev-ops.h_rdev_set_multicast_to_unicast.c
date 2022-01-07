
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_multicast_to_unicast ) (int *,struct net_device*,int const) ;} ;


 int stub1 (int *,struct net_device*,int const) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_multicast_to_unicast (int *,struct net_device*,int const) ;

__attribute__((used)) static inline int
rdev_set_multicast_to_unicast(struct cfg80211_registered_device *rdev,
         struct net_device *dev,
         const bool enabled)
{
 int ret;
 trace_rdev_set_multicast_to_unicast(&rdev->wiphy, dev, enabled);
 ret = rdev->ops->set_multicast_to_unicast(&rdev->wiphy, dev, enabled);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
