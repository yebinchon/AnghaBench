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
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long long*,int,scalar_t__) ; 

int FUNC3(int cpu, off_t offset, unsigned long long *msr)
{
	ssize_t retval;

	retval = FUNC2(FUNC1(cpu), msr, sizeof(*msr), offset);

	if (retval != sizeof *msr)
		FUNC0(-1, "cpu%d: msr offset 0x%llx read failed", cpu, (unsigned long long)offset);

	return 0;
}