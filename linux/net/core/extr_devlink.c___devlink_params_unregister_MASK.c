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
struct list_head {int dummy; } ;
struct devlink_param {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ,struct list_head*,struct devlink_param const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct devlink *devlink,
					unsigned int port_index,
					struct list_head *param_list,
					const struct devlink_param *params,
					size_t params_count,
					enum devlink_command cmd)
{
	const struct devlink_param *param = params;
	int i;

	FUNC1(&devlink->lock);
	for (i = 0; i < params_count; i++, param++)
		FUNC0(devlink, 0, param_list, param,
					     cmd);
	FUNC2(&devlink->lock);
}