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
 scalar_t__ BITMASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned long*) ; 
 scalar_t__ topo_max_cpus ; 

__attribute__((used)) static void FUNC4(void)
{
	FILE *filep;
	unsigned long dummy;

	topo_max_cpus = 0;
	filep = FUNC2(
		"/sys/devices/system/cpu/cpu0/topology/thread_siblings", "r");
	while (FUNC3(filep, "%lx,", &dummy) == 1)
		topo_max_cpus += BITMASK_SIZE;
	FUNC1(filep);
	topo_max_cpus--; /* 0 based */

	FUNC0("max cpus %d\n", topo_max_cpus);
}