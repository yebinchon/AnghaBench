
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_acl_data {int dummy; } ;
struct TYPE_2__ {int (* set_mac_acl ) (int *,struct net_device*,struct cfg80211_acl_data*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_acl_data*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_mac_acl (int *,struct net_device*,struct cfg80211_acl_data*) ;

__attribute__((used)) static inline int rdev_set_mac_acl(struct cfg80211_registered_device *rdev,
       struct net_device *dev,
       struct cfg80211_acl_data *params)
{
 int ret;

 trace_rdev_set_mac_acl(&rdev->wiphy, dev, params);
 ret = rdev->ops->set_mac_acl(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
