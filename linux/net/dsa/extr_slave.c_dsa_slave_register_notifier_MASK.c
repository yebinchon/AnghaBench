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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dsa_slave_nb ; 
 struct notifier_block dsa_slave_switchdev_blocking_notifier ; 
 int /*<<< orphan*/  dsa_slave_switchdev_notifier ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct notifier_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	struct notifier_block *nb;
	int err;

	err = FUNC0(&dsa_slave_nb);
	if (err)
		return err;

	err = FUNC2(&dsa_slave_switchdev_notifier);
	if (err)
		goto err_switchdev_nb;

	nb = &dsa_slave_switchdev_blocking_notifier;
	err = FUNC1(nb);
	if (err)
		goto err_switchdev_blocking_nb;

	return 0;

err_switchdev_blocking_nb:
	FUNC4(&dsa_slave_switchdev_notifier);
err_switchdev_nb:
	FUNC3(&dsa_slave_nb);
	return err;
}