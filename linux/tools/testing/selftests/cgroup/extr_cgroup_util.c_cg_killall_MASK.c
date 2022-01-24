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
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ FUNC0 (char const*,char*,char*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char**,int) ; 

int FUNC3(const char *cgroup)
{
	char buf[PAGE_SIZE];
	char *ptr = buf;

	if (FUNC0(cgroup, "cgroup.procs", buf, sizeof(buf)))
		return -1;

	while (ptr < buf + sizeof(buf)) {
		int pid = FUNC2(ptr, &ptr, 10);

		if (pid == 0)
			break;
		if (*ptr)
			ptr++;
		else
			break;
		if (FUNC1(pid, SIGKILL))
			return -1;
	}

	return 0;
}