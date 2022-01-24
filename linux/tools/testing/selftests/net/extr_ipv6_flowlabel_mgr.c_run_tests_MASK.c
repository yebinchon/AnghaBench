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

/* Variables and functions */
 int FL_MIN_LINGER ; 
 int IPV6_FL_F_CREATE ; 
 int IPV6_FL_F_EXCL ; 
 int /*<<< orphan*/  IPV6_FL_S_ANY ; 
 int /*<<< orphan*/  IPV6_FL_S_EXCL ; 
 int /*<<< orphan*/  IPV6_FL_S_PROCESS ; 
 int /*<<< orphan*/  IPV6_FL_S_USER ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ cfg_long_running ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (int*) ; 

__attribute__((used)) static void FUNC14(int fd)
{
	int wstatus;
	pid_t pid;

	FUNC6("cannot get non-existent label");
	FUNC4(FUNC7(fd, 1, IPV6_FL_S_ANY, 0));

	FUNC6("cannot put non-existent label");
	FUNC4(FUNC8(fd, 1));

	FUNC6("cannot create label greater than 20 bits");
	FUNC4(FUNC7(fd, 0x1FFFFF, IPV6_FL_S_ANY,
				  IPV6_FL_F_CREATE));

	FUNC6("create a new label (FL_F_CREATE)");
	FUNC5(FUNC7(fd, 1, IPV6_FL_S_ANY, IPV6_FL_F_CREATE));
	FUNC6("can get the label (without FL_F_CREATE)");
	FUNC5(FUNC7(fd, 1, IPV6_FL_S_ANY, 0));
	FUNC6("can get it again with create flag set, too");
	FUNC5(FUNC7(fd, 1, IPV6_FL_S_ANY, IPV6_FL_F_CREATE));
	FUNC6("cannot get it again with the exclusive (FL_FL_EXCL) flag");
	FUNC4(FUNC7(fd, 1, IPV6_FL_S_ANY,
					 IPV6_FL_F_CREATE | IPV6_FL_F_EXCL));
	FUNC6("can now put exactly three references");
	FUNC5(FUNC8(fd, 1));
	FUNC5(FUNC8(fd, 1));
	FUNC5(FUNC8(fd, 1));
	FUNC4(FUNC8(fd, 1));

	FUNC6("create a new exclusive label (FL_S_EXCL)");
	FUNC5(FUNC7(fd, 2, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE));
	FUNC6("cannot get it again in non-exclusive mode");
	FUNC4(FUNC7(fd, 2, IPV6_FL_S_ANY,  IPV6_FL_F_CREATE));
	FUNC6("cannot get it again in exclusive mode either");
	FUNC4(FUNC7(fd, 2, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE));
	FUNC5(FUNC8(fd, 2));

	if (cfg_long_running) {
		FUNC6("cannot reuse the label, due to linger");
		FUNC4(FUNC7(fd, 2, IPV6_FL_S_ANY,
					  IPV6_FL_F_CREATE));
		FUNC6("after sleep, can reuse");
		FUNC12(FL_MIN_LINGER * 2 + 1);
		FUNC5(FUNC7(fd, 2, IPV6_FL_S_ANY,
					  IPV6_FL_F_CREATE));
	}

	FUNC6("create a new user-private label (FL_S_USER)");
	FUNC5(FUNC7(fd, 3, IPV6_FL_S_USER, IPV6_FL_F_CREATE));
	FUNC6("cannot get it again in non-exclusive mode");
	FUNC4(FUNC7(fd, 3, IPV6_FL_S_ANY, 0));
	FUNC6("cannot get it again in exclusive mode");
	FUNC4(FUNC7(fd, 3, IPV6_FL_S_EXCL, 0));
	FUNC6("can get it again in user mode");
	FUNC5(FUNC7(fd, 3, IPV6_FL_S_USER, 0));
	FUNC6("child process can get it too, but not after setuid(nobody)");
	pid = FUNC9();
	if (pid == -1)
		FUNC2(1, errno, "fork");
	if (!pid) {
		FUNC5(FUNC7(fd, 3, IPV6_FL_S_USER, 0));
		if (FUNC11(USHRT_MAX))
			FUNC10(stderr, "[INFO] skip setuid child test\n");
		else
			FUNC4(FUNC7(fd, 3, IPV6_FL_S_USER, 0));
		FUNC3(0);
	}
	if (FUNC13(&wstatus) == -1)
		FUNC2(1, errno, "wait");
	if (!FUNC1(wstatus) || FUNC0(wstatus) != 0)
		FUNC2(1, errno, "wait: unexpected child result");

	FUNC6("create a new process-private label (FL_S_PROCESS)");
	FUNC5(FUNC7(fd, 4, IPV6_FL_S_PROCESS, IPV6_FL_F_CREATE));
	FUNC6("can get it again");
	FUNC5(FUNC7(fd, 4, IPV6_FL_S_PROCESS, 0));
	FUNC6("child process cannot can get it");
	pid = FUNC9();
	if (pid == -1)
		FUNC2(1, errno, "fork");
	if (!pid) {
		FUNC4(FUNC7(fd, 4, IPV6_FL_S_PROCESS, 0));
		FUNC3(0);
	}
	if (FUNC13(&wstatus) == -1)
		FUNC2(1, errno, "wait");
	if (!FUNC1(wstatus) || FUNC0(wstatus) != 0)
		FUNC2(1, errno, "wait: unexpected child result");
}