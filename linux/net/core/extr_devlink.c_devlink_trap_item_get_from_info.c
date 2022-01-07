
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct devlink_trap_item {int dummy; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_TRAP_NAME ;
 struct devlink_trap_item* devlink_trap_item_lookup (struct devlink*,int ) ;
 int nla_data (struct nlattr*) ;

__attribute__((used)) static struct devlink_trap_item *
devlink_trap_item_get_from_info(struct devlink *devlink,
    struct genl_info *info)
{
 struct nlattr *attr;

 if (!info->attrs[DEVLINK_ATTR_TRAP_NAME])
  return ((void*)0);
 attr = info->attrs[DEVLINK_ATTR_TRAP_NAME];

 return devlink_trap_item_lookup(devlink, nla_data(attr));
}
