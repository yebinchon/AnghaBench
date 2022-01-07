
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocb_setup {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* join_ocb ) (int *,struct net_device*,struct ocb_setup*) ;} ;


 int stub1 (int *,struct net_device*,struct ocb_setup*) ;
 int trace_rdev_join_ocb (int *,struct net_device*,struct ocb_setup*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_join_ocb(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct ocb_setup *setup)
{
 int ret;
 trace_rdev_join_ocb(&rdev->wiphy, dev, setup);
 ret = rdev->ops->join_ocb(&rdev->wiphy, dev, setup);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
