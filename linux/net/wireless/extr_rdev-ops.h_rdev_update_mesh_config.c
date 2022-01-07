
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mesh_config {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_mesh_config ) (int *,struct net_device*,int ,struct mesh_config const*) ;} ;


 int stub1 (int *,struct net_device*,int ,struct mesh_config const*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_update_mesh_config (int *,struct net_device*,int ,struct mesh_config const*) ;

__attribute__((used)) static inline int
rdev_update_mesh_config(struct cfg80211_registered_device *rdev,
   struct net_device *dev, u32 mask,
   const struct mesh_config *nconf)
{
 int ret;
 trace_rdev_update_mesh_config(&rdev->wiphy, dev, mask, nconf);
 ret = rdev->ops->update_mesh_config(&rdev->wiphy, dev, mask, nconf);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
