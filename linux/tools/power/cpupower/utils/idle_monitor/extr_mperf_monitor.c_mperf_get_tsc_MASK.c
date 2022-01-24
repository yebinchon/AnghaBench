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
 int /*<<< orphan*/  MSR_TSC ; 
 int /*<<< orphan*/  base_cpu ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(unsigned long long *tsc)
{
	int ret;

	ret = FUNC1(base_cpu, MSR_TSC, tsc);
	if (ret)
		FUNC0("Reading TSC MSR failed, returning %llu\n", *tsc);
	return ret;
}