
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct devlink_param {int dummy; } ;
struct devlink {int lock; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int devlink_param_unregister_one (struct devlink*,int ,struct list_head*,struct devlink_param const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __devlink_params_unregister(struct devlink *devlink,
     unsigned int port_index,
     struct list_head *param_list,
     const struct devlink_param *params,
     size_t params_count,
     enum devlink_command cmd)
{
 const struct devlink_param *param = params;
 int i;

 mutex_lock(&devlink->lock);
 for (i = 0; i < params_count; i++, param++)
  devlink_param_unregister_one(devlink, 0, param_list, param,
          cmd);
 mutex_unlock(&devlink->lock);
}
