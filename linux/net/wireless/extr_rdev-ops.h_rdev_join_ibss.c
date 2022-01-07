
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_ibss_params {int dummy; } ;
struct TYPE_2__ {int (* join_ibss ) (int *,struct net_device*,struct cfg80211_ibss_params*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_ibss_params*) ;
 int trace_rdev_join_ibss (int *,struct net_device*,struct cfg80211_ibss_params*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_join_ibss(struct cfg80211_registered_device *rdev,
     struct net_device *dev,
     struct cfg80211_ibss_params *params)
{
 int ret;
 trace_rdev_join_ibss(&rdev->wiphy, dev, params);
 ret = rdev->ops->join_ibss(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
