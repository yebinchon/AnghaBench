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
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *cgroup, bool freeze)
{
	int fd, ret = -1;

	fd = FUNC2(cgroup);
	if (fd < 0)
		return fd;

	ret = FUNC1(cgroup, freeze);
	if (ret) {
		FUNC5("Error: cg_freeze_nowait() failed\n");
		goto out;
	}

	ret = FUNC3(fd);
	if (ret)
		goto out;

	ret = FUNC0(cgroup, freeze);
out:
	FUNC4(fd);
	return ret;
}