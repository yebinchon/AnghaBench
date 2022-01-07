
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_nan_func ) (int *,struct wireless_dev*,int ) ;} ;


 int stub1 (int *,struct wireless_dev*,int ) ;
 int trace_rdev_del_nan_func (int *,struct wireless_dev*,int ) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void rdev_del_nan_func(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev, u64 cookie)
{
 trace_rdev_del_nan_func(&rdev->wiphy, wdev, cookie);
 rdev->ops->del_nan_func(&rdev->wiphy, wdev, cookie);
 trace_rdev_return_void(&rdev->wiphy);
}
