
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct genl_info {int attrs; } ;
struct cfg802154_registered_device {int dummy; } ;


 struct cfg802154_registered_device* __cfg802154_rdev_from_attrs (struct net*,int ) ;

__attribute__((used)) static struct cfg802154_registered_device *
cfg802154_get_dev_from_info(struct net *netns, struct genl_info *info)
{
 return __cfg802154_rdev_from_attrs(netns, info->attrs);
}
