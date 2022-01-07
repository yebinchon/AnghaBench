
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* resume ) (int *) ;} ;


 int stub1 (int *) ;
 int trace_802154_rdev_resume (int *) ;
 int trace_802154_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_resume(struct cfg802154_registered_device *rdev)
{
 int ret;
 trace_802154_rdev_resume(&rdev->wpan_phy);
 ret = rdev->ops->resume(&rdev->wpan_phy);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}
