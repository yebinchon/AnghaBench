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
typedef  scalar_t__ suspend_state_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PM_SUSPEND_MAX ; 
 scalar_t__ PM_SUSPEND_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  autosleep_lock ; 
 scalar_t__ autosleep_state ; 
 int /*<<< orphan*/  autosleep_ws ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(suspend_state_t state)
{

#ifndef CONFIG_HIBERNATION
	if (state >= PM_SUSPEND_MAX)
		return -EINVAL;
#endif

	FUNC1(autosleep_ws);

	FUNC2(&autosleep_lock);

	autosleep_state = state;

	FUNC0(autosleep_ws);

	if (state > PM_SUSPEND_ON) {
		FUNC4(true);
		FUNC5();
	} else {
		FUNC4(false);
	}

	FUNC3(&autosleep_lock);
	return 0;
}