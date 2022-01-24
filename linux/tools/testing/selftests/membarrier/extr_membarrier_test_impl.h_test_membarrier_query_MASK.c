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
 scalar_t__ ENOSYS ; 
 int MEMBARRIER_CMD_GLOBAL ; 
 int /*<<< orphan*/  MEMBARRIER_CMD_QUERY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int flags = 0, ret;

	ret = FUNC3(MEMBARRIER_CMD_QUERY, flags);
	if (ret < 0) {
		if (errno == ENOSYS) {
			/*
			 * It is valid to build a kernel with
			 * CONFIG_MEMBARRIER=n. However, this skips the tests.
			 */
			FUNC1(
				"sys membarrier (CONFIG_MEMBARRIER) is disabled.\n");
		}
		FUNC0("sys_membarrier() failed\n");
	}
	if (!(ret & MEMBARRIER_CMD_GLOBAL))
		FUNC1(
			"sys_membarrier unsupported: CMD_GLOBAL not found.\n");

	FUNC2("sys_membarrier available\n");
	return 0;
}