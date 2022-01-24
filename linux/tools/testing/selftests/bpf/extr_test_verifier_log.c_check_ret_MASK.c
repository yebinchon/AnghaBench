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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int ret, int exp_errno)
{
	if (ret > 0) {
		FUNC0(ret);
		FUNC1("broken sample loaded successfully!?\n");
		FUNC2(1);
	}

	if (!ret || errno != exp_errno) {
		FUNC1("Program load returned: ret:%d/errno:%d, expected ret:%d/errno:%d\n",
		    ret, errno, -1, exp_errno);
		FUNC2(1);
	}
}