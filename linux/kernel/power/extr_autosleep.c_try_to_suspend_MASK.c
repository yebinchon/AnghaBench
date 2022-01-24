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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ PM_SUSPEND_MAX ; 
 scalar_t__ PM_SUSPEND_ON ; 
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  autosleep_lock ; 
 scalar_t__ autosleep_state ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC8(struct work_struct *work)
{
	unsigned int initial_count, final_count;

	if (!FUNC3(&initial_count, true))
		goto out;

	FUNC1(&autosleep_lock);

	if (!FUNC4(initial_count) ||
		system_state != SYSTEM_RUNNING) {
		FUNC2(&autosleep_lock);
		goto out;
	}

	if (autosleep_state == PM_SUSPEND_ON) {
		FUNC2(&autosleep_lock);
		return;
	}
	if (autosleep_state >= PM_SUSPEND_MAX)
		FUNC0();
	else
		FUNC5(autosleep_state);

	FUNC2(&autosleep_lock);

	if (!FUNC3(&final_count, false))
		goto out;

	/*
	 * If the wakeup occured for an unknown reason, wait to prevent the
	 * system from trying to suspend and waking up in a tight loop.
	 */
	if (final_count == initial_count)
		FUNC7(HZ / 2);

 out:
	FUNC6();
}