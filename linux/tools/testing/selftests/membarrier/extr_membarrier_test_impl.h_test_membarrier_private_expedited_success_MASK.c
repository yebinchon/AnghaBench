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
 int MEMBARRIER_CMD_PRIVATE_EXPEDITED ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void)
{
	int cmd = MEMBARRIER_CMD_PRIVATE_EXPEDITED, flags = 0;
	const char *test_name = "sys membarrier MEMBARRIER_CMD_PRIVATE_EXPEDITED";

	if (FUNC2(cmd, flags) != 0) {
		FUNC0(
			"%s test: flags = %d, errno = %d\n",
			test_name, flags, errno);
	}

	FUNC1(
		"%s test: flags = %d\n",
		test_name, flags);
	return 0;
}