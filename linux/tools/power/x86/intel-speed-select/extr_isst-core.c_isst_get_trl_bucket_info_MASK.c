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
 int FUNC1 (int,int,int /*<<< orphan*/ ,unsigned long long*) ; 

int FUNC2(int cpu, unsigned long long *buckets_info)
{
	int ret;

	FUNC0("cpu:%d bucket info via MSR\n", cpu);

	*buckets_info = 0;

	ret = FUNC1(cpu, 0x1ae, 0, buckets_info);
	if (ret)
		return ret;

	FUNC0("cpu:%d bucket info via MSR successful 0x%llx\n", cpu,
		     *buckets_info);

	return 0;
}