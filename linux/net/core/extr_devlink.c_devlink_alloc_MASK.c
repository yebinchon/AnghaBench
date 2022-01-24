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
struct devlink_ops {int dummy; } ;
struct devlink {int /*<<< orphan*/  reporters_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  trap_group_list; int /*<<< orphan*/  trap_list; int /*<<< orphan*/  reporter_list; int /*<<< orphan*/  region_list; int /*<<< orphan*/  param_list; int /*<<< orphan*/  resource_list; int /*<<< orphan*/  dpipe_table_list; int /*<<< orphan*/  sb_list; int /*<<< orphan*/  port_list; struct devlink_ops const* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 struct devlink* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct devlink *FUNC6(const struct devlink_ops *ops, size_t priv_size)
{
	struct devlink *devlink;

	if (FUNC2(!ops))
		return NULL;

	devlink = FUNC4(sizeof(*devlink) + priv_size, GFP_KERNEL);
	if (!devlink)
		return NULL;
	devlink->ops = ops;
	FUNC3(devlink, &init_net);
	FUNC0(&devlink->port_list);
	FUNC0(&devlink->sb_list);
	FUNC1(&devlink->dpipe_table_list);
	FUNC0(&devlink->resource_list);
	FUNC0(&devlink->param_list);
	FUNC0(&devlink->region_list);
	FUNC0(&devlink->reporter_list);
	FUNC0(&devlink->trap_list);
	FUNC0(&devlink->trap_group_list);
	FUNC5(&devlink->lock);
	FUNC5(&devlink->reporters_lock);
	return devlink;
}