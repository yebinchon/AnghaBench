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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(int cpu, void *arg1, void *arg2, void *arg3,
				 void *arg4)
{
	int (*fn_ptr)(int cpu, void *arg);
	int ret;

	fn_ptr = arg1;
	ret = fn_ptr(cpu, arg2);
	if (ret)
		FUNC1("get_tdp_*");
	else
		FUNC0(cpu, outf, arg3,
					    *(unsigned int *)arg4);
}