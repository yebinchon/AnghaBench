
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mpath_info {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mpp ) (int *,struct net_device*,int *,int *,struct mpath_info*) ;} ;


 int stub1 (int *,struct net_device*,int *,int *,struct mpath_info*) ;
 int trace_rdev_get_mpp (int *,struct net_device*,int *,int *) ;
 int trace_rdev_return_int_mpath_info (int *,int,struct mpath_info*) ;

__attribute__((used)) static inline int rdev_get_mpp(struct cfg80211_registered_device *rdev,
          struct net_device *dev, u8 *dst, u8 *mpp,
          struct mpath_info *pinfo)
{
 int ret;

 trace_rdev_get_mpp(&rdev->wiphy, dev, dst, mpp);
 ret = rdev->ops->get_mpp(&rdev->wiphy, dev, dst, mpp, pinfo);
 trace_rdev_return_int_mpath_info(&rdev->wiphy, ret, pinfo);
 return ret;
}
