#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct devlink_trap_item {int /*<<< orphan*/  stats; int /*<<< orphan*/  list; } ;
struct devlink_trap {int /*<<< orphan*/  name; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* trap_fini ) (struct devlink*,struct devlink_trap const*,struct devlink_trap_item*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_TRAP_DEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,struct devlink_trap_item*) ; 
 struct devlink_trap_item* FUNC2 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,struct devlink_trap_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct devlink_trap_item*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct devlink*,struct devlink_trap const*,struct devlink_trap_item*) ; 

__attribute__((used)) static void FUNC8(struct devlink *devlink,
				    const struct devlink_trap *trap)
{
	struct devlink_trap_item *trap_item;

	trap_item = FUNC2(devlink, trap->name);
	if (FUNC0(!trap_item))
		return;

	FUNC3(devlink, trap_item, DEVLINK_CMD_TRAP_DEL);
	FUNC6(&trap_item->list);
	if (devlink->ops->trap_fini)
		devlink->ops->trap_fini(devlink, trap, trap_item);
	FUNC1(devlink, trap_item);
	FUNC4(trap_item->stats);
	FUNC5(trap_item);
}