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
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int FUNC5(const char *cgroup,
		  int (*fn)(const char *cgroup, void *arg),
		  void *arg)
{
	int pid;

	pid = FUNC2();
	if (pid == 0) {
		char buf[64];

		FUNC4(buf, sizeof(buf), "%d", FUNC3());
		if (FUNC0(cgroup, "cgroup.procs", buf))
			FUNC1(EXIT_FAILURE);
		FUNC1(fn(cgroup, arg));
	}

	return pid;
}