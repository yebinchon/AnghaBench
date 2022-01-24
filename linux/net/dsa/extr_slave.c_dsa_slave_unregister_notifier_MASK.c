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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct notifier_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct notifier_block *nb;
	int err;

	nb = &dsa_slave_switchdev_blocking_notifier;
	err = FUNC2(nb);
	if (err)
		FUNC0("DSA: failed to unregister switchdev blocking notifier (%d)\n", err);

	err = FUNC3(&dsa_slave_switchdev_notifier);
	if (err)
		FUNC0("DSA: failed to unregister switchdev notifier (%d)\n", err);

	err = FUNC1(&dsa_slave_nb);
	if (err)
		FUNC0("DSA: failed to unregister slave notifier (%d)\n", err);
}