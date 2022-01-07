
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_update_ft_ies_params {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_ft_ies ) (int *,struct net_device*,struct cfg80211_update_ft_ies_params*) ;} ;


 int stub1 (int *,struct net_device*,struct cfg80211_update_ft_ies_params*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_update_ft_ies (int *,struct net_device*,struct cfg80211_update_ft_ies_params*) ;

__attribute__((used)) static inline int rdev_update_ft_ies(struct cfg80211_registered_device *rdev,
         struct net_device *dev,
         struct cfg80211_update_ft_ies_params *ftie)
{
 int ret;

 trace_rdev_update_ft_ies(&rdev->wiphy, dev, ftie);
 ret = rdev->ops->update_ft_ies(&rdev->wiphy, dev, ftie);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
