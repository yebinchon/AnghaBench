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
 int /*<<< orphan*/  MSR_PM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ verbose ; 

int FUNC3(int cpu)
{
	unsigned long long msr;

	FUNC0(cpu, MSR_PM_ENABLE, &msr);
	FUNC2(cpu, MSR_PM_ENABLE, 1);

	if (verbose)
		FUNC1("cpu%d: MSR_PM_ENABLE old: %d new: %d\n", cpu, (unsigned int) msr, 1);

	return 0;
}