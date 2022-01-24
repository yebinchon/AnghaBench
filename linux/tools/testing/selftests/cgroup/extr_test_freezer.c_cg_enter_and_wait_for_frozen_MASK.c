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
 int FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const char *cgroup, int pid,
					bool frozen)
{
	int fd, ret = -1;
	int attempts;

	fd = FUNC2(cgroup);
	if (fd < 0)
		return fd;

	ret = FUNC1(cgroup, pid);
	if (ret)
		goto out;

	for (attempts = 0; attempts < 10; attempts++) {
		ret = FUNC3(fd);
		if (ret)
			break;

		ret = FUNC0(cgroup, frozen);
		if (ret)
			continue;
	}

out:
	FUNC4(fd);
	return ret;
}