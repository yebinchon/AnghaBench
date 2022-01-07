
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vif_params {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int (* change_virtual_intf ) (int *,struct net_device*,int,struct vif_params*) ;} ;


 int stub1 (int *,struct net_device*,int,struct vif_params*) ;
 int trace_rdev_change_virtual_intf (int *,struct net_device*,int) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_change_virtual_intf(struct cfg80211_registered_device *rdev,
    struct net_device *dev, enum nl80211_iftype type,
    struct vif_params *params)
{
 int ret;
 trace_rdev_change_virtual_intf(&rdev->wiphy, dev, type);
 ret = rdev->ops->change_virtual_intf(&rdev->wiphy, dev, type, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
