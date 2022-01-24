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
 scalar_t__ FUNC1 (unsigned int,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, unsigned int human)
{
	unsigned long min, max;

	if (FUNC1(cpu, &min, &max)) {
		FUNC3(FUNC0("Not Available\n"));
		return -EINVAL;
	}

	if (human) {
		FUNC3(FUNC0("  hardware limits: "));
		FUNC2(min);
		FUNC3(" - ");
		FUNC2(max);
		FUNC3("\n");
	} else {
		FUNC3("%lu %lu\n", min, max);
	}
	return 0;
}