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
 scalar_t__ EINVAL ; 
 int MEMBARRIER_CMD_QUERY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int cmd = MEMBARRIER_CMD_QUERY, flags = 1;
	const char *test_name = "sys membarrier MEMBARRIER_CMD_QUERY invalid flags";

	if (FUNC3(cmd, flags) != -1) {
		FUNC0(
			"%s test: flags = %d. Should fail, but passed\n",
			test_name, flags);
	}
	if (errno != EINVAL) {
		FUNC0(
			"%s test: flags = %d. Should return (%d: \"%s\"), but returned (%d: \"%s\").\n",
			test_name, flags, EINVAL, FUNC2(EINVAL),
			errno, FUNC2(errno));
	}

	FUNC1(
		"%s test: flags = %d, errno = %d. Failed as expected\n",
		test_name, flags, errno);
	return 0;
}