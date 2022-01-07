
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_power_mgmt ) (int *,struct net_device*,int,int) ;} ;


 int stub1 (int *,struct net_device*,int,int) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_power_mgmt (int *,struct net_device*,int,int) ;

__attribute__((used)) static inline int rdev_set_power_mgmt(struct cfg80211_registered_device *rdev,
          struct net_device *dev, bool enabled,
          int timeout)
{
 int ret;
 trace_rdev_set_power_mgmt(&rdev->wiphy, dev, enabled, timeout);
 ret = rdev->ops->set_power_mgmt(&rdev->wiphy, dev, enabled, timeout);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
