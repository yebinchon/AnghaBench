
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_nan_func {int dummy; } ;
struct TYPE_2__ {int (* add_nan_func ) (int *,struct wireless_dev*,struct cfg80211_nan_func*) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_nan_func*) ;
 int trace_rdev_add_nan_func (int *,struct wireless_dev*,struct cfg80211_nan_func*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_add_nan_func(struct cfg80211_registered_device *rdev,
    struct wireless_dev *wdev,
    struct cfg80211_nan_func *nan_func)
{
 int ret;

 trace_rdev_add_nan_func(&rdev->wiphy, wdev, nan_func);
 ret = rdev->ops->add_nan_func(&rdev->wiphy, wdev, nan_func);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
