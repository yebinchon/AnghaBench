
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink {int param_list; } ;


 int DEVLINK_CMD_PARAM_NEW ;
 int __devlink_nl_cmd_param_set_doit (struct devlink*,int ,int *,struct genl_info*,int ) ;

__attribute__((used)) static int devlink_nl_cmd_param_set_doit(struct sk_buff *skb,
      struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];

 return __devlink_nl_cmd_param_set_doit(devlink, 0, &devlink->param_list,
            info, DEVLINK_CMD_PARAM_NEW);
}
