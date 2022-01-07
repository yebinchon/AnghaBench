
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* get_channel ) (int *,struct wireless_dev*,struct cfg80211_chan_def*) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int trace_rdev_get_channel (int *,struct wireless_dev*) ;
 int trace_rdev_return_chandef (int *,int,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline int
rdev_get_channel(struct cfg80211_registered_device *rdev,
   struct wireless_dev *wdev,
   struct cfg80211_chan_def *chandef)
{
 int ret;

 trace_rdev_get_channel(&rdev->wiphy, wdev);
 ret = rdev->ops->get_channel(&rdev->wiphy, wdev, chandef);
 trace_rdev_return_chandef(&rdev->wiphy, ret, chandef);

 return ret;
}
