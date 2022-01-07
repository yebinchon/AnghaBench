
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_csa_settings {int dummy; } ;
struct TYPE_2__ {int (* channel_switch ) (int *,struct net_device*,struct cfg80211_csa_settings*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_csa_settings*) ;
 int trace_rdev_channel_switch (int *,struct net_device*,struct cfg80211_csa_settings*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_channel_switch(struct cfg80211_registered_device *rdev,
          struct net_device *dev,
          struct cfg80211_csa_settings *params)
{
 int ret;

 trace_rdev_channel_switch(&rdev->wiphy, dev, params);
 ret = rdev->ops->channel_switch(&rdev->wiphy, dev, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
