
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union devlink_param_value {int dummy; } devlink_param_value ;
typedef int u32 ;
struct devlink_port {int param_list; struct devlink* devlink; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 int __devlink_param_driverinit_value_get (int *,int ,union devlink_param_value*) ;
 int devlink_reload_supported (struct devlink*) ;

int devlink_port_param_driverinit_value_get(struct devlink_port *devlink_port,
         u32 param_id,
         union devlink_param_value *init_val)
{
 struct devlink *devlink = devlink_port->devlink;

 if (!devlink_reload_supported(devlink))
  return -EOPNOTSUPP;

 return __devlink_param_driverinit_value_get(&devlink_port->param_list,
          param_id, init_val);
}
