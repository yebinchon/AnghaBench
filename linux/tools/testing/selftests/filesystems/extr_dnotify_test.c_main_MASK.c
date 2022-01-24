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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_sigaction; } ;

/* Variables and functions */
 int DN_CREATE ; 
 int DN_MODIFY ; 
 int DN_MULTISHOT ; 
 int /*<<< orphan*/  F_NOTIFY ; 
 int /*<<< orphan*/  F_SETSIG ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int SIGRTMIN ; 
 int event_fd ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  handler ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	struct sigaction act;
	int fd;

	act.sa_sigaction = handler;
	FUNC5(&act.sa_mask);
	act.sa_flags = SA_SIGINFO;
	FUNC4(SIGRTMIN + 1, &act, NULL);

	fd = FUNC1(".", O_RDONLY);
	FUNC0(fd, F_SETSIG, SIGRTMIN + 1);
	FUNC0(fd, F_NOTIFY, DN_MODIFY|DN_CREATE|DN_MULTISHOT);
	/* we will now be notified if any of the files
	   in "." is modified or new files are created */
	while (1) {
		FUNC2();
		FUNC3("Got event on fd=%d\n", event_fd);
	}
}