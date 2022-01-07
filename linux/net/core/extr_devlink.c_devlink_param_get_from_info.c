
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct genl_info {int * attrs; } ;
struct devlink_param_item {int dummy; } ;


 size_t DEVLINK_ATTR_PARAM_NAME ;
 struct devlink_param_item* devlink_param_find_by_name (struct list_head*,char*) ;
 char* nla_data (int ) ;

__attribute__((used)) static struct devlink_param_item *
devlink_param_get_from_info(struct list_head *param_list,
       struct genl_info *info)
{
 char *param_name;

 if (!info->attrs[DEVLINK_ATTR_PARAM_NAME])
  return ((void*)0);

 param_name = nla_data(info->attrs[DEVLINK_ATTR_PARAM_NAME]);
 return devlink_param_find_by_name(param_list, param_name);
}
