
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* abort_scan ) (int *,struct wireless_dev*) ;} ;


 int stub1 (int *,struct wireless_dev*) ;
 int trace_rdev_abort_scan (int *,struct wireless_dev*) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void rdev_abort_scan(struct cfg80211_registered_device *rdev,
       struct wireless_dev *wdev)
{
 trace_rdev_abort_scan(&rdev->wiphy, wdev);
 rdev->ops->abort_scan(&rdev->wiphy, wdev);
 trace_rdev_return_void(&rdev->wiphy);
}
