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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int oom_killer_disabled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  oom_lock ; 
 int /*<<< orphan*/  oom_victims ; 
 int /*<<< orphan*/  oom_victims_wait ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,long) ; 

bool FUNC6(signed long timeout)
{
	signed long ret;

	/*
	 * Make sure to not race with an ongoing OOM killer. Check that the
	 * current is not killed (possibly due to sharing the victim's memory).
	 */
	if (FUNC1(&oom_lock))
		return false;
	oom_killer_disabled = true;
	FUNC2(&oom_lock);

	ret = FUNC5(oom_victims_wait,
			!FUNC0(&oom_victims), timeout);
	if (ret <= 0) {
		FUNC3();
		return false;
	}
	FUNC4("OOM killer disabled.\n");

	return true;
}