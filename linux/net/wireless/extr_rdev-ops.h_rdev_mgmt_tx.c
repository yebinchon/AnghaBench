
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_mgmt_tx_params {int dummy; } ;
struct TYPE_2__ {int (* mgmt_tx ) (int *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int *) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int *) ;
 int trace_rdev_mgmt_tx (int *,struct wireless_dev*,struct cfg80211_mgmt_tx_params*) ;
 int trace_rdev_return_int_cookie (int *,int,int ) ;

__attribute__((used)) static inline int rdev_mgmt_tx(struct cfg80211_registered_device *rdev,
          struct wireless_dev *wdev,
          struct cfg80211_mgmt_tx_params *params,
          u64 *cookie)
{
 int ret;
 trace_rdev_mgmt_tx(&rdev->wiphy, wdev, params);
 ret = rdev->ops->mgmt_tx(&rdev->wiphy, wdev, params, cookie);
 trace_rdev_return_int_cookie(&rdev->wiphy, ret, *cookie);
 return ret;
}
