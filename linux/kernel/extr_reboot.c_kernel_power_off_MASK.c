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
 int /*<<< orphan*/  KMSG_DUMP_POWEROFF ; 
 int /*<<< orphan*/  SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	FUNC0(SYSTEM_POWER_OFF);
	if (&pm_power_off_prepare)
		FUNC4();
	FUNC3();
	FUNC6();
	FUNC5("Power down\n");
	FUNC1(KMSG_DUMP_POWEROFF);
	FUNC2();
}