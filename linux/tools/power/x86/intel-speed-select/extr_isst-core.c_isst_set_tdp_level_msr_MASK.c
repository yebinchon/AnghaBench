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
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int,int,unsigned long long*) ; 

int FUNC3(int cpu, int tdp_level)
{
	unsigned long long level = tdp_level;
	int ret;

	FUNC0("cpu: tdp_level via MSR %d\n", cpu, tdp_level);

	if (FUNC1(cpu)) {
		FUNC0("cpu: tdp_locked %d\n", cpu);
		return -1;
	}

	if (tdp_level > 2)
		return -1; /* invalid value */

	ret = FUNC2(cpu, 0x64b, 1, &level);
	if (ret)
		return ret;

	FUNC0("cpu: tdp_level via MSR successful %d\n", cpu, tdp_level);

	return 0;
}