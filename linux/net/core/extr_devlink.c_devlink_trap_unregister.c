
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap_item {int stats; int list; } ;
struct devlink_trap {int name; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* trap_fini ) (struct devlink*,struct devlink_trap const*,struct devlink_trap_item*) ;} ;


 int DEVLINK_CMD_TRAP_DEL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int devlink_trap_item_group_unlink (struct devlink*,struct devlink_trap_item*) ;
 struct devlink_trap_item* devlink_trap_item_lookup (struct devlink*,int ) ;
 int devlink_trap_notify (struct devlink*,struct devlink_trap_item*,int ) ;
 int free_percpu (int ) ;
 int kfree (struct devlink_trap_item*) ;
 int list_del (int *) ;
 int stub1 (struct devlink*,struct devlink_trap const*,struct devlink_trap_item*) ;

__attribute__((used)) static void devlink_trap_unregister(struct devlink *devlink,
        const struct devlink_trap *trap)
{
 struct devlink_trap_item *trap_item;

 trap_item = devlink_trap_item_lookup(devlink, trap->name);
 if (WARN_ON_ONCE(!trap_item))
  return;

 devlink_trap_notify(devlink, trap_item, DEVLINK_CMD_TRAP_DEL);
 list_del(&trap_item->list);
 if (devlink->ops->trap_fini)
  devlink->ops->trap_fini(devlink, trap, trap_item);
 devlink_trap_item_group_unlink(devlink, trap_item);
 free_percpu(trap_item->stats);
 kfree(trap_item);
}
