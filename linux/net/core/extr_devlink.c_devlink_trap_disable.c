
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap_item {int action; } ;
struct devlink_trap {int name; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* trap_action_set ) (struct devlink*,struct devlink_trap const*,int ) ;} ;


 int DEVLINK_TRAP_ACTION_DROP ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct devlink_trap_item* devlink_trap_item_lookup (struct devlink*,int ) ;
 int stub1 (struct devlink*,struct devlink_trap const*,int ) ;

__attribute__((used)) static void devlink_trap_disable(struct devlink *devlink,
     const struct devlink_trap *trap)
{
 struct devlink_trap_item *trap_item;

 trap_item = devlink_trap_item_lookup(devlink, trap->name);
 if (WARN_ON_ONCE(!trap_item))
  return;

 devlink->ops->trap_action_set(devlink, trap, DEVLINK_TRAP_ACTION_DROP);
 trap_item->action = DEVLINK_TRAP_ACTION_DROP;
}
