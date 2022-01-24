#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct devlink_trap_item {int action; TYPE_2__* trap; } ;
struct devlink {TYPE_1__* ops; } ;
typedef  enum devlink_trap_action { ____Placeholder_devlink_trap_action } devlink_trap_action ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int (* trap_action_set ) (struct devlink*,TYPE_2__*,int) ;} ;

/* Variables and functions */
 scalar_t__ DEVLINK_TRAP_TYPE_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct devlink*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC2(struct devlink *devlink,
				     struct devlink_trap_item *trap_item,
				     enum devlink_trap_action trap_action,
				     struct netlink_ext_ack *extack)
{
	int err;

	if (trap_item->action != trap_action &&
	    trap_item->trap->type != DEVLINK_TRAP_TYPE_DROP) {
		FUNC0(extack, "Cannot change action of non-drop traps. Skipping");
		return 0;
	}

	err = devlink->ops->trap_action_set(devlink, trap_item->trap,
					    trap_action);
	if (err)
		return err;

	trap_item->action = trap_action;

	return 0;
}