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
 int MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE ; 
 int /*<<< orphan*/  MEMBARRIER_CMD_QUERY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
	int status;

	status = FUNC2();
	if (status)
		return status;
	status = FUNC3();
	if (status)
		return status;
	status = FUNC4();
	if (status)
		return status;
	status = FUNC1(MEMBARRIER_CMD_QUERY, 0);
	if (status < 0) {
		FUNC0("sys_membarrier() failed\n");
		return status;
	}
	if (status & MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE) {
		status = FUNC5();
		if (status)
			return status;
	}
	return 0;
}