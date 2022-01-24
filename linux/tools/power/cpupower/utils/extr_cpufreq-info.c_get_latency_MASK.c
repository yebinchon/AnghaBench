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
 unsigned long UINT_MAX ; 
 char* FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, unsigned int human)
{
	unsigned long latency = FUNC1(cpu);

	FUNC3(FUNC0("  maximum transition latency: "));
	if (!latency || latency == UINT_MAX) {
		FUNC3(FUNC0(" Cannot determine or is not supported.\n"));
		return -EINVAL;
	}

	if (human) {
		FUNC2(latency);
		FUNC3("\n");
	} else
		FUNC3("%lu\n", latency);
	return 0;
}