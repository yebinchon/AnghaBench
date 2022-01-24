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
struct devlink_trap {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  trap_action_set; int /*<<< orphan*/  trap_init; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct devlink*,struct devlink_trap const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,struct devlink_trap const*) ; 
 int FUNC2 (struct devlink_trap const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct devlink *devlink,
			   const struct devlink_trap *traps,
			   size_t traps_count, void *priv)
{
	int i, err;

	if (!devlink->ops->trap_init || !devlink->ops->trap_action_set)
		return -EINVAL;

	FUNC3(&devlink->lock);
	for (i = 0; i < traps_count; i++) {
		const struct devlink_trap *trap = &traps[i];

		err = FUNC2(trap);
		if (err)
			goto err_trap_verify;

		err = FUNC0(devlink, trap, priv);
		if (err)
			goto err_trap_register;
	}
	FUNC4(&devlink->lock);

	return 0;

err_trap_register:
err_trap_verify:
	for (i--; i >= 0; i--)
		FUNC1(devlink, &traps[i]);
	FUNC4(&devlink->lock);
	return err;
}