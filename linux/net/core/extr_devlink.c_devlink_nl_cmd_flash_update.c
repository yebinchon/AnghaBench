
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int extack; struct nlattr** attrs; struct devlink** user_ptr; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flash_update ) (struct devlink*,char const*,char const*,int ) ;} ;


 size_t DEVLINK_ATTR_FLASH_UPDATE_COMPONENT ;
 size_t DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME ;
 int EINVAL ;
 int EOPNOTSUPP ;
 char* nla_data (struct nlattr*) ;
 int stub1 (struct devlink*,char const*,char const*,int ) ;

__attribute__((used)) static int devlink_nl_cmd_flash_update(struct sk_buff *skb,
           struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 const char *file_name, *component;
 struct nlattr *nla_component;

 if (!devlink->ops->flash_update)
  return -EOPNOTSUPP;

 if (!info->attrs[DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME])
  return -EINVAL;
 file_name = nla_data(info->attrs[DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME]);

 nla_component = info->attrs[DEVLINK_ATTR_FLASH_UPDATE_COMPONENT];
 component = nla_component ? nla_data(nla_component) : ((void*)0);

 return devlink->ops->flash_update(devlink, file_name, component,
       info->extack);
}
