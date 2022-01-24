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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_PIDFD ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

int FUNC10(int argc, char *argv[])
{
	int pidfd = -1, ret = EXIT_FAILURE;
	char buf[4096] = { 0 };
	pid_t pid;
	int procfd, statusfd;
	ssize_t bytes;

	pid = FUNC4(CLONE_PIDFD, &pidfd);
	if (pid < 0)
		FUNC1(ret, "CLONE_PIDFD");
	if (pidfd == -1) {
		FUNC8("CLONE_PIDFD is not supported by the kernel");
		goto out;
	}

	procfd = FUNC5(pid, pidfd);
	FUNC0(pidfd);
	if (procfd < 0)
		goto out;

	statusfd = FUNC3(procfd, "status", O_RDONLY | O_CLOEXEC);
	FUNC0(procfd);
	if (statusfd < 0)
		goto out;

	bytes = FUNC6(statusfd, buf, sizeof(buf));
	if (bytes > 0)
		bytes = FUNC9(STDOUT_FILENO, buf, bytes);
	FUNC0(statusfd);
	ret = EXIT_SUCCESS;

out:
	(void)FUNC7(NULL);

	FUNC2(ret);
}