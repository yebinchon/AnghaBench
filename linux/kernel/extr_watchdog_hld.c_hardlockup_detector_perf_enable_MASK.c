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
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watchdog_cpus ; 
 int /*<<< orphan*/  watchdog_ev ; 

void FUNC5(void)
{
	if (FUNC1())
		return;

	/* use original value for check */
	if (!FUNC0(&watchdog_cpus))
		FUNC3("Enabled. Permanently consumes one hw-PMU counter.\n");

	FUNC2(FUNC4(watchdog_ev));
}