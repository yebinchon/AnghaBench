
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop_ap ) (int *,struct net_device*) ;} ;


 int stub1 (int *,struct net_device*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_stop_ap (int *,struct net_device*) ;

__attribute__((used)) static inline int rdev_stop_ap(struct cfg80211_registered_device *rdev,
          struct net_device *dev)
{
 int ret;
 trace_rdev_stop_ap(&rdev->wiphy, dev);
 ret = rdev->ops->stop_ap(&rdev->wiphy, dev);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
