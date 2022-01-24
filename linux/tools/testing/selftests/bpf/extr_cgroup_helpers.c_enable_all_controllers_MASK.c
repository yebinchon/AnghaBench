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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 char* FUNC6 (char*,char*,char**) ; 

int FUNC7(char *cgroup_path)
{
	char path[PATH_MAX + 1];
	char buf[PATH_MAX];
	char *c, *c2;
	int fd, cfd;
	ssize_t len;

	FUNC5(path, sizeof(path), "%s/cgroup.controllers", cgroup_path);
	fd = FUNC3(path, O_RDONLY);
	if (fd < 0) {
		FUNC2("Opening cgroup.controllers: %s", path);
		return 1;
	}

	len = FUNC4(fd, buf, sizeof(buf) - 1);
	if (len < 0) {
		FUNC0(fd);
		FUNC2("Reading cgroup.controllers: %s", path);
		return 1;
	}
	buf[len] = 0;
	FUNC0(fd);

	/* No controllers available? We're probably on cgroup v1. */
	if (len == 0)
		return 0;

	FUNC5(path, sizeof(path), "%s/cgroup.subtree_control", cgroup_path);
	cfd = FUNC3(path, O_RDWR);
	if (cfd < 0) {
		FUNC2("Opening cgroup.subtree_control: %s", path);
		return 1;
	}

	for (c = FUNC6(buf, " ", &c2); c; c = FUNC6(NULL, " ", &c2)) {
		if (FUNC1(cfd, "+%s\n", c) <= 0) {
			FUNC2("Enabling controller %s: %s", c, path);
			FUNC0(cfd);
			return 1;
		}
	}
	FUNC0(cfd);
	return 0;
}