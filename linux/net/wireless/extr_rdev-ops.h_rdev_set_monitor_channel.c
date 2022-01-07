
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* set_monitor_channel ) (int *,struct cfg80211_chan_def*) ;} ;


 int stub1 (int *,struct cfg80211_chan_def*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_monitor_channel (int *,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline int
rdev_set_monitor_channel(struct cfg80211_registered_device *rdev,
    struct cfg80211_chan_def *chandef)
{
 int ret;
 trace_rdev_set_monitor_channel(&rdev->wiphy, chandef);
 ret = rdev->ops->set_monitor_channel(&rdev->wiphy, chandef);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
