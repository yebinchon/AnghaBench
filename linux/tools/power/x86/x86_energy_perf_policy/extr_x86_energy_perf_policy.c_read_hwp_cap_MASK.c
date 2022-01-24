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
struct msr_hwp_cap {void* lowest; void* efficient; void* guaranteed; void* highest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned long long*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(int cpu, struct msr_hwp_cap *cap, unsigned int msr_offset)
{
	unsigned long long msr;

	FUNC4(cpu, msr_offset, &msr);

	cap->highest = FUNC5(FUNC1(msr));
	cap->guaranteed = FUNC5(FUNC0(msr));
	cap->efficient = FUNC5(FUNC3(msr));
	cap->lowest = FUNC5(FUNC2(msr));
}