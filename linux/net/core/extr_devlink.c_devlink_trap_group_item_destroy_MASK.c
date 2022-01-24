#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct devlink_trap_group_item {int /*<<< orphan*/  stats; int /*<<< orphan*/  list; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_TRAP_GROUP_DEL ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,struct devlink_trap_group_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_trap_group_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct devlink *devlink,
				struct devlink_trap_group_item *group_item)
{
	FUNC0(devlink, group_item,
				  DEVLINK_CMD_TRAP_GROUP_DEL);
	FUNC3(&group_item->list);
	FUNC1(group_item->stats);
	FUNC2(group_item);
}