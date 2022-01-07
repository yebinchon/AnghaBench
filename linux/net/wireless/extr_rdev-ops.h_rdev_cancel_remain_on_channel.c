
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cancel_remain_on_channel ) (int *,struct wireless_dev*,int ) ;} ;


 int stub1 (int *,struct wireless_dev*,int ) ;
 int trace_rdev_cancel_remain_on_channel (int *,struct wireless_dev*,int ) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_cancel_remain_on_channel(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev, u64 cookie)
{
 int ret;
 trace_rdev_cancel_remain_on_channel(&rdev->wiphy, wdev, cookie);
 ret = rdev->ops->cancel_remain_on_channel(&rdev->wiphy, wdev, cookie);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
