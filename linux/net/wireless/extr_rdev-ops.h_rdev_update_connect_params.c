
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_connect_params {int dummy; } ;
struct TYPE_2__ {int (* update_connect_params ) (int *,struct net_device*,struct cfg80211_connect_params*,int ) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_connect_params*,int ) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_update_connect_params (int *,struct net_device*,struct cfg80211_connect_params*,int ) ;

__attribute__((used)) static inline int
rdev_update_connect_params(struct cfg80211_registered_device *rdev,
      struct net_device *dev,
      struct cfg80211_connect_params *sme, u32 changed)
{
 int ret;
 trace_rdev_update_connect_params(&rdev->wiphy, dev, sme, changed);
 ret = rdev->ops->update_connect_params(&rdev->wiphy, dev, sme, changed);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
