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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4(const char *path)
{
	char cgroup_path[PATH_MAX + 1];
	int fd;

	FUNC0(cgroup_path, path);
	if (FUNC2(cgroup_path, 0777) && errno != EEXIST) {
		FUNC1("mkdiring cgroup %s .. %s", path, cgroup_path);
		return -1;
	}

	fd = FUNC3(cgroup_path, O_RDONLY);
	if (fd < 0) {
		FUNC1("Opening Cgroup");
		return -1;
	}

	return fd;
}