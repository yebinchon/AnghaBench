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
 char* CGROUP_MOUNT_PATH ; 
 int /*<<< orphan*/  CLONE_NEWNS ; 
 scalar_t__ EBUSY ; 
 scalar_t__ EEXIST ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	char cgroup_workdir[PATH_MAX + 1];

	FUNC2(cgroup_workdir, "");

	if (FUNC6(CLONE_NEWNS)) {
		FUNC3("unshare");
		return 1;
	}

	if (FUNC5("none", "/", NULL, MS_REC | MS_PRIVATE, NULL)) {
		FUNC3("mount fakeroot");
		return 1;
	}

	if (FUNC5("none", CGROUP_MOUNT_PATH, "cgroup2", 0, NULL) && errno != EBUSY) {
		FUNC3("mount cgroup2");
		return 1;
	}

	/* Cleanup existing failed runs, now that the environment is setup */
	FUNC0();

	if (FUNC4(cgroup_workdir, 0777) && errno != EEXIST) {
		FUNC3("mkdir cgroup work dir");
		return 1;
	}

	if (FUNC1(cgroup_workdir))
		return 1;

	return 0;
}