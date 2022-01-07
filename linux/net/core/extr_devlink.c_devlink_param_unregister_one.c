
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct devlink_param_item {int list; } ;
struct devlink_param {int name; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int WARN_ON (int) ;
 struct devlink_param_item* devlink_param_find_by_name (struct list_head*,int ) ;
 int devlink_param_notify (struct devlink*,unsigned int,struct devlink_param_item*,int) ;
 int kfree (struct devlink_param_item*) ;
 int list_del (int *) ;

__attribute__((used)) static void devlink_param_unregister_one(struct devlink *devlink,
      unsigned int port_index,
      struct list_head *param_list,
      const struct devlink_param *param,
      enum devlink_command cmd)
{
 struct devlink_param_item *param_item;

 param_item = devlink_param_find_by_name(param_list, param->name);
 WARN_ON(!param_item);
 devlink_param_notify(devlink, port_index, param_item, cmd);
 list_del(&param_item->list);
 kfree(param_item);
}
