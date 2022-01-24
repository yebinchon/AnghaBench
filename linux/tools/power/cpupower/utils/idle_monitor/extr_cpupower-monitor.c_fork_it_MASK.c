#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
typedef  int pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) () ;int /*<<< orphan*/  (* start ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 unsigned int avail_monitors ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 TYPE_1__** monitors ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned long long FUNC12 (struct timespec,struct timespec) ; 
 int FUNC13 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC14(char **argv)
{
	int status;
	unsigned int num;
	unsigned long long timediff;
	pid_t child_pid;
	struct timespec start, end;

	child_pid = FUNC6();
	FUNC3(CLOCK_REALTIME, &start);

	for (num = 0; num < avail_monitors; num++)
		monitors[num]->start();

	if (!child_pid) {
		/* child */
		FUNC4(argv[0], argv);
	} else {
		/* parent */
		if (child_pid == -1) {
			FUNC7("fork");
			FUNC5(1);
		}

		FUNC9(SIGINT, SIG_IGN);
		FUNC9(SIGQUIT, SIG_IGN);
		if (FUNC13(child_pid, &status, 0) == -1) {
			FUNC7("wait");
			FUNC5(1);
		}
	}
	FUNC3(CLOCK_REALTIME, &end);
	for (num = 0; num < avail_monitors; num++)
		monitors[num]->stop();

	timediff = FUNC12(start, end);
	if (FUNC1(status))
		FUNC8(FUNC2("%s took %.5f seconds and exited with status %d\n"),
			argv[0], timediff / (1000.0 * 1000),
			FUNC0(status));
	return 0;
}