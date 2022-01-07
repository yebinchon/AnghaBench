
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_2__ {int (* start_nan ) (int *,struct wireless_dev*,struct cfg80211_nan_conf*) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_nan_conf*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_start_nan (int *,struct wireless_dev*,struct cfg80211_nan_conf*) ;

__attribute__((used)) static inline int rdev_start_nan(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     struct cfg80211_nan_conf *conf)
{
 int ret;

 trace_rdev_start_nan(&rdev->wiphy, wdev, conf);
 ret = rdev->ops->start_nan(&rdev->wiphy, wdev, conf);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
