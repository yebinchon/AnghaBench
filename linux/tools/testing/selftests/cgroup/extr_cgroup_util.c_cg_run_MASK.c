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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC8(const char *cgroup,
	   int (*fn)(const char *cgroup, void *arg),
	   void *arg)
{
	int pid, retcode;

	pid = FUNC4();
	if (pid < 0) {
		return pid;
	} else if (pid == 0) {
		char buf[64];

		FUNC6(buf, sizeof(buf), "%d", FUNC5());
		if (FUNC2(cgroup, "cgroup.procs", buf))
			FUNC3(EXIT_FAILURE);
		FUNC3(fn(cgroup, arg));
	} else {
		FUNC7(pid, &retcode, 0);
		if (FUNC1(retcode))
			return FUNC0(retcode);
		else
			return -1;
	}
}