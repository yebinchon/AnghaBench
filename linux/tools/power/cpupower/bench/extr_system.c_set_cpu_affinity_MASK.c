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
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(unsigned int cpu)
{
	cpu_set_t cpuset;

	FUNC1(&cpuset);
	FUNC0(cpu, &cpuset);

	FUNC2("set affinity to cpu #%u\n", cpu);

	if (FUNC6(FUNC4(), sizeof(cpu_set_t), &cpuset) < 0) {
		FUNC5("sched_setaffinity");
		FUNC3(stderr, "warning: unable to set cpu affinity\n");
		return -1;
	}

	return 0;
}