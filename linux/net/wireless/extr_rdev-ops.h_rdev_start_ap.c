
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_ap_settings {int dummy; } ;
struct TYPE_2__ {int (* start_ap ) (int *,struct net_device*,struct cfg80211_ap_settings*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_ap_settings*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_start_ap (int *,struct net_device*,struct cfg80211_ap_settings*) ;

__attribute__((used)) static inline int rdev_start_ap(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct cfg80211_ap_settings *settings)
{
 int ret;
 trace_rdev_start_ap(&rdev->wiphy, dev, settings);
 ret = rdev->ops->start_ap(&rdev->wiphy, dev, settings);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
