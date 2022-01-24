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
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,char*) ; 

void FUNC7(int is_max, int cpu, unsigned int ratio)
{
	char pathname[64];
	FILE *fp;
	int retval;
	int khz;

	FUNC6(pathname, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_%s_freq",
		cpu, is_max ? "max" : "min");

	fp = FUNC1(pathname, "w");
	if (!fp) {
		if (debug)
			FUNC3(pathname);
		return;
	}

	khz = FUNC5(ratio);
	retval = FUNC2(fp, "%d", khz);
	if (retval < 0)
		if (debug)
			FUNC3("fprintf");
	if (debug)
		FUNC4("echo %d > %s\n", khz, pathname);

	FUNC0(fp);
}