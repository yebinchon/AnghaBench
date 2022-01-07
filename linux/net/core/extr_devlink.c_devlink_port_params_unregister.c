
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int param_list; int index; int devlink; } ;
struct devlink_param {int dummy; } ;


 int DEVLINK_CMD_PORT_PARAM_DEL ;
 void __devlink_params_unregister (int ,int ,int *,struct devlink_param const*,size_t,int ) ;

void devlink_port_params_unregister(struct devlink_port *devlink_port,
        const struct devlink_param *params,
        size_t params_count)
{
 return __devlink_params_unregister(devlink_port->devlink,
        devlink_port->index,
        &devlink_port->param_list,
        params, params_count,
        DEVLINK_CMD_PORT_PARAM_DEL);
}
