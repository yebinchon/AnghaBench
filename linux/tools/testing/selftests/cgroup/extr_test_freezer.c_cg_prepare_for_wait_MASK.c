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
 int /*<<< orphan*/  IN_MODIFY ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *cgroup)
{
	int fd, ret = -1;

	fd = FUNC4(0);
	if (fd == -1) {
		FUNC2("Error: inotify_init1() failed\n");
		return fd;
	}

	ret = FUNC3(fd, FUNC0(cgroup, "cgroup.events"),
				IN_MODIFY);
	if (ret == -1) {
		FUNC2("Error: inotify_add_watch() failed\n");
		FUNC1(fd);
	}

	return fd;
}