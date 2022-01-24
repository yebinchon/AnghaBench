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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

unsigned int FUNC4(int cpu)
{
	FILE *fp;
	char pathname[128];
	unsigned int pkg;
	int retval;

	FUNC3(pathname, "/sys/devices/system/cpu/cpu%d/topology/physical_package_id", cpu);

	fp = FUNC1(pathname, "r");
	retval = FUNC2(fp, "%d\n", &pkg);
	if (retval != 1)
		FUNC0(1, "%s: failed to parse", pathname);
	return pkg;
}