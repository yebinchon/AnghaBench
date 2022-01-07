
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_param {int dummy; } ;
struct devlink {int param_list; } ;


 int DEVLINK_CMD_PARAM_DEL ;
 int DEVLINK_CMD_PARAM_NEW ;
 int __devlink_params_register (struct devlink*,int ,int *,struct devlink_param const*,size_t,int ,int ) ;

int devlink_params_register(struct devlink *devlink,
       const struct devlink_param *params,
       size_t params_count)
{
 return __devlink_params_register(devlink, 0, &devlink->param_list,
      params, params_count,
      DEVLINK_CMD_PARAM_NEW,
      DEVLINK_CMD_PARAM_DEL);
}
