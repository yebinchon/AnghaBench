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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIC_SYS_LPI ; 
 int /*<<< orphan*/  cpuidle_cur_sys_lpi_us ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(void)
{
	FILE *fp;
	int retval;

	fp = FUNC2("/sys/devices/system/cpu/cpuidle/low_power_idle_system_residency_us", "r");

	retval = FUNC4(fp, "%lld", &cpuidle_cur_sys_lpi_us);
	if (retval != 1) {
		FUNC3(stderr, "Disabling Low Power Idle System output\n");
		FUNC0(BIC_SYS_LPI);
		FUNC1(fp);
		return -1;
	}
	FUNC1(fp);

	return 0;
}