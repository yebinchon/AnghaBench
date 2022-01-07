
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg802154_registered_device {int wpan_phy; TYPE_1__* ops; } ;
struct TYPE_2__ {struct net_device* (* add_virtual_intf_deprecated ) (int *,char const*,unsigned char,int) ;} ;


 struct net_device* stub1 (int *,char const*,unsigned char,int) ;

__attribute__((used)) static inline struct net_device *
rdev_add_virtual_intf_deprecated(struct cfg802154_registered_device *rdev,
     const char *name,
     unsigned char name_assign_type,
     int type)
{
 return rdev->ops->add_virtual_intf_deprecated(&rdev->wpan_phy, name,
            name_assign_type, type);
}
