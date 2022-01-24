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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
#define  EPERM 128 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(pid_t pid, int pidfd)
{
	int procfd, ret;
	char path[100];

	FUNC2(path, sizeof(path), "/proc/%d", pid);
	procfd = FUNC1(path, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
	if (procfd < 0) {
		FUNC4("Failed to open %s\n", path);
		return -1;
	}

	/*
	 * Verify that the pid has not been recycled and our /proc/<pid> handle
	 * is still valid.
	 */
	ret = FUNC3(pidfd, 0, NULL, 0);
	if (ret < 0) {
		switch (errno) {
		case EPERM:
			/* Process exists, just not allowed to signal it. */
			break;
		default:
			FUNC4("Failed to signal process\n");
			FUNC0(procfd);
			procfd = -1;
		}
	}

	return procfd;
}