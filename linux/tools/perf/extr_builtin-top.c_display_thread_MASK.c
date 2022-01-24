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
struct termios {int dummy; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct perf_top {int delay_secs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_FS ; 
 int /*<<< orphan*/  EINTR ; 
 int MSEC_PER_SEC ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  PR_SET_NAME ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  __fallthrough ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_top*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_top*) ; 
 int FUNC4 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct termios*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11(void *arg)
{
	struct pollfd stdin_poll = { .fd = 0, .events = POLLIN };
	struct termios save;
	struct perf_top *top = arg;
	int delay_msecs, c;

	/* In order to read symbols from other namespaces perf to  needs to call
	 * setns(2).  This isn't permitted if the struct_fs has multiple users.
	 * unshare(2) the fs so that we may continue to setns into namespaces
	 * that we're observing.
	 */
	FUNC10(CLONE_FS);

	FUNC5(PR_SET_NAME, "perf-top-UI", 0, 0, 0);

	FUNC0();
	FUNC6();
repeat:
	delay_msecs = top->delay_secs * MSEC_PER_SEC;
	FUNC7(&save);
	/* trash return*/
	FUNC1(stdin);

	while (!done) {
		FUNC3(top);
		/*
		 * Either timeout expired or we got an EINTR due to SIGWINCH,
		 * refresh screen in both cases.
		 */
		switch (FUNC4(&stdin_poll, 1, delay_msecs)) {
		case 0:
			continue;
		case -1:
			if (errno == EINTR)
				continue;
			__fallthrough;
		default:
			c = FUNC1(stdin);
			FUNC9(0, TCSAFLUSH, &save);

			if (FUNC2(top, c))
				goto repeat;
			FUNC8();
		}
	}

	FUNC9(0, TCSAFLUSH, &save);
	return NULL;
}