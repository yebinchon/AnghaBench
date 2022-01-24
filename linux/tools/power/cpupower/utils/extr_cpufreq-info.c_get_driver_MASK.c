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
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	char *driver = FUNC1(cpu);
	if (!driver) {
		FUNC3(FUNC0("  no or unknown cpufreq driver is active on this CPU\n"));
		return -EINVAL;
	}
	FUNC3("  driver: %s\n", driver);
	FUNC2(driver);
	return 0;
}