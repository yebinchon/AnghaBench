
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct devlink_param {int dummy; } ;
struct devlink {int lock; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int devlink_param_register_one (struct devlink*,unsigned int,struct list_head*,struct devlink_param const*,int) ;
 int devlink_param_unregister_one (struct devlink*,unsigned int,struct list_head*,struct devlink_param const*,int) ;
 int devlink_param_verify (struct devlink_param const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __devlink_params_register(struct devlink *devlink,
         unsigned int port_index,
         struct list_head *param_list,
         const struct devlink_param *params,
         size_t params_count,
         enum devlink_command reg_cmd,
         enum devlink_command unreg_cmd)
{
 const struct devlink_param *param = params;
 int i;
 int err;

 mutex_lock(&devlink->lock);
 for (i = 0; i < params_count; i++, param++) {
  err = devlink_param_verify(param);
  if (err)
   goto rollback;

  err = devlink_param_register_one(devlink, port_index,
       param_list, param, reg_cmd);
  if (err)
   goto rollback;
 }

 mutex_unlock(&devlink->lock);
 return 0;

rollback:
 if (!i)
  goto unlock;
 for (param--; i > 0; i--, param--)
  devlink_param_unregister_one(devlink, port_index, param_list,
          param, unreg_cmd);
unlock:
 mutex_unlock(&devlink->lock);
 return err;
}
