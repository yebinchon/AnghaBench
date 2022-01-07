
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_cca_ed_level ) (int *,int ) ;} ;


 int stub1 (int *,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;
 int trace_802154_rdev_set_cca_ed_level (int *,int ) ;

__attribute__((used)) static inline int
rdev_set_cca_ed_level(struct cfg802154_registered_device *rdev, s32 ed_level)
{
 int ret;

 trace_802154_rdev_set_cca_ed_level(&rdev->wpan_phy, ed_level);
 ret = rdev->ops->set_cca_ed_level(&rdev->wpan_phy, ed_level);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}
