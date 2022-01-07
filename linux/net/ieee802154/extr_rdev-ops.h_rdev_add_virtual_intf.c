
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
typedef enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
typedef int __le64 ;
struct TYPE_2__ {int (* add_virtual_intf ) (int *,char*,unsigned char,int,int ) ;} ;


 int stub1 (int *,char*,unsigned char,int,int ) ;
 int trace_802154_rdev_add_virtual_intf (int *,char*,int,int ) ;
 int trace_802154_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_add_virtual_intf(struct cfg802154_registered_device *rdev, char *name,
        unsigned char name_assign_type,
        enum nl802154_iftype type, __le64 extended_addr)
{
 int ret;

 trace_802154_rdev_add_virtual_intf(&rdev->wpan_phy, name, type,
        extended_addr);
 ret = rdev->ops->add_virtual_intf(&rdev->wpan_phy, name,
       name_assign_type, type,
       extended_addr);
 trace_802154_rdev_return_int(&rdev->wpan_phy, ret);
 return ret;
}
