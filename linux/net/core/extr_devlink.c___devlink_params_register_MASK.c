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
 int FUNC0 (struct devlink*,unsigned int,struct list_head*,struct devlink_param const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,unsigned int,struct list_head*,struct devlink_param const*,int) ; 
 int FUNC2 (struct devlink_param const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct devlink *devlink,
				     unsigned int port_index,
				     struct list_head *param_list,
				     const struct devlink_param *params,
				     size_t params_count,
				     enum devlink_command reg_cmd,
				     enum devlink_command unreg_cmd)
{
	const struct devlink_param *param = params;
	int i;
	int err;

	FUNC3(&devlink->lock);
	for (i = 0; i < params_count; i++, param++) {
		err = FUNC2(param);
		if (err)
			goto rollback;

		err = FUNC0(devlink, port_index,
						 param_list, param, reg_cmd);
		if (err)
			goto rollback;
	}

	FUNC4(&devlink->lock);
	return 0;

rollback:
	if (!i)
		goto unlock;
	for (param--; i > 0; i--, param--)
		FUNC1(devlink, port_index, param_list,
					     param, unreg_cmd);
unlock:
	FUNC4(&devlink->lock);
	return err;
}