
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_dm_hw_metadata {int input_dev; int trap_name; int trap_group_name; } ;
struct devlink_trap_item {TYPE_2__* trap; struct devlink_trap_group_item* group_item; } ;
struct devlink_trap_group_item {TYPE_1__* group; } ;
struct devlink_port {scalar_t__ type; int type_lock; int type_dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ DEVLINK_PORT_TYPE_ETH ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
devlink_trap_report_metadata_fill(struct net_dm_hw_metadata *hw_metadata,
      const struct devlink_trap_item *trap_item,
      struct devlink_port *in_devlink_port)
{
 struct devlink_trap_group_item *group_item = trap_item->group_item;

 hw_metadata->trap_group_name = group_item->group->name;
 hw_metadata->trap_name = trap_item->trap->name;

 spin_lock(&in_devlink_port->type_lock);
 if (in_devlink_port->type == DEVLINK_PORT_TYPE_ETH)
  hw_metadata->input_dev = in_devlink_port->type_dev;
 spin_unlock(&in_devlink_port->type_lock);
}
