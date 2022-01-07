
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union devlink_param_value {int dummy; } devlink_param_value ;
typedef int u32 ;
struct devlink_port {int param_list; int index; int devlink; } ;


 int DEVLINK_CMD_PORT_PARAM_NEW ;
 int __devlink_param_driverinit_value_set (int ,int ,int *,int ,union devlink_param_value,int ) ;

int devlink_port_param_driverinit_value_set(struct devlink_port *devlink_port,
         u32 param_id,
         union devlink_param_value init_val)
{
 return __devlink_param_driverinit_value_set(devlink_port->devlink,
          devlink_port->index,
          &devlink_port->param_list,
          param_id, init_val,
          DEVLINK_CMD_PORT_PARAM_NEW);
}
