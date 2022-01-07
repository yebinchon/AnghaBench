
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink {int resource_list; } ;


 int DEVLINK_CMD_RESOURCE_DUMP ;
 int EOPNOTSUPP ;
 int devlink_resource_fill (struct genl_info*,int ,int ) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int devlink_nl_cmd_resource_dump(struct sk_buff *skb,
     struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];

 if (list_empty(&devlink->resource_list))
  return -EOPNOTSUPP;

 return devlink_resource_fill(info, DEVLINK_CMD_RESOURCE_DUMP, 0);
}
