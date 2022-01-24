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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  cgroup_procs_path ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC6(char *cgroup_path)
{
	char cgroup_procs_path[PATH_MAX + 1];
	pid_t pid = FUNC2();
	int fd, rc = 0;

	FUNC5(cgroup_procs_path, sizeof(cgroup_procs_path),
		 "%s/cgroup.procs", cgroup_path);

	fd = FUNC4(cgroup_procs_path, O_WRONLY);
	if (fd < 0) {
		FUNC3("Opening Cgroup Procs: %s", cgroup_procs_path);
		return 1;
	}

	if (FUNC1(fd, "%d\n", pid) < 0) {
		FUNC3("Joining Cgroup");
		rc = 1;
	}

	FUNC0(fd);
	return rc;
}