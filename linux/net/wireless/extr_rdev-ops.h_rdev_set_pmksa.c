
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_pmksa {int dummy; } ;
struct TYPE_2__ {int (* set_pmksa ) (int *,struct net_device*,struct cfg80211_pmksa*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_pmksa*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_pmksa (int *,struct net_device*,struct cfg80211_pmksa*) ;

__attribute__((used)) static inline int rdev_set_pmksa(struct cfg80211_registered_device *rdev,
     struct net_device *netdev,
     struct cfg80211_pmksa *pmksa)
{
 int ret;
 trace_rdev_set_pmksa(&rdev->wiphy, netdev, pmksa);
 ret = rdev->ops->set_pmksa(&rdev->wiphy, netdev, pmksa);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
