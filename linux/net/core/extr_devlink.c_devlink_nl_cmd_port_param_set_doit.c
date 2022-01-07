
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink_port** user_ptr; } ;
struct devlink_port {int param_list; int index; int devlink; } ;


 int DEVLINK_CMD_PORT_PARAM_NEW ;
 int __devlink_nl_cmd_param_set_doit (int ,int ,int *,struct genl_info*,int ) ;

__attribute__((used)) static int devlink_nl_cmd_port_param_set_doit(struct sk_buff *skb,
           struct genl_info *info)
{
 struct devlink_port *devlink_port = info->user_ptr[0];

 return __devlink_nl_cmd_param_set_doit(devlink_port->devlink,
            devlink_port->index,
            &devlink_port->param_list, info,
            DEVLINK_CMD_PORT_PARAM_NEW);
}
