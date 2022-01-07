
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int * attrs; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_TRAP_GROUP_NAME ;
 struct devlink_trap_group_item* devlink_trap_group_item_lookup (struct devlink*,char*) ;
 char* nla_data (int ) ;

__attribute__((used)) static struct devlink_trap_group_item *
devlink_trap_group_item_get_from_info(struct devlink *devlink,
          struct genl_info *info)
{
 char *name;

 if (!info->attrs[DEVLINK_ATTR_TRAP_GROUP_NAME])
  return ((void*)0);
 name = nla_data(info->attrs[DEVLINK_ATTR_TRAP_GROUP_NAME]);

 return devlink_trap_group_item_lookup(devlink, name);
}
