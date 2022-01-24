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
struct devlink {int /*<<< orphan*/  port_list; int /*<<< orphan*/  sb_list; int /*<<< orphan*/  dpipe_table_list; int /*<<< orphan*/  resource_list; int /*<<< orphan*/  param_list; int /*<<< orphan*/  region_list; int /*<<< orphan*/  reporter_list; int /*<<< orphan*/  trap_list; int /*<<< orphan*/  trap_group_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  reporters_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct devlink *devlink)
{
	FUNC3(&devlink->reporters_lock);
	FUNC3(&devlink->lock);
	FUNC0(!FUNC2(&devlink->trap_group_list));
	FUNC0(!FUNC2(&devlink->trap_list));
	FUNC0(!FUNC2(&devlink->reporter_list));
	FUNC0(!FUNC2(&devlink->region_list));
	FUNC0(!FUNC2(&devlink->param_list));
	FUNC0(!FUNC2(&devlink->resource_list));
	FUNC0(!FUNC2(&devlink->dpipe_table_list));
	FUNC0(!FUNC2(&devlink->sb_list));
	FUNC0(!FUNC2(&devlink->port_list));

	FUNC1(devlink);
}