
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mpath_info {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dump_mpath ) (int *,struct net_device*,int,int *,int *,struct mpath_info*) ;} ;


 int stub1 (int *,struct net_device*,int,int *,int *,struct mpath_info*) ;
 int trace_rdev_dump_mpath (int *,struct net_device*,int,int *,int *) ;
 int trace_rdev_return_int_mpath_info (int *,int,struct mpath_info*) ;

__attribute__((used)) static inline int rdev_dump_mpath(struct cfg80211_registered_device *rdev,
      struct net_device *dev, int idx, u8 *dst,
      u8 *next_hop, struct mpath_info *pinfo)

{
 int ret;
 trace_rdev_dump_mpath(&rdev->wiphy, dev, idx, dst, next_hop);
 ret = rdev->ops->dump_mpath(&rdev->wiphy, dev, idx, dst, next_hop,
        pinfo);
 trace_rdev_return_int_mpath_info(&rdev->wiphy, ret, pinfo);
 return ret;
}
