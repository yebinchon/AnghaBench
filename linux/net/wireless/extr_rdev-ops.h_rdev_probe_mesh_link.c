
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* probe_mesh_link ) (int *,struct net_device*,void const*,size_t) ;} ;


 int stub1 (int *,struct net_device*,void const*,size_t) ;
 int trace_rdev_probe_mesh_link (int *,struct net_device*,int const*,void const*,size_t) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_probe_mesh_link(struct cfg80211_registered_device *rdev,
       struct net_device *dev, const u8 *dest,
       const void *buf, size_t len)
{
 int ret;

 trace_rdev_probe_mesh_link(&rdev->wiphy, dev, dest, buf, len);
 ret = rdev->ops->probe_mesh_link(&rdev->wiphy, dev, buf, len);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
