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
 char* LOGFILE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  logfp ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* myname ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC7(int argc, char *argv[])
{
	int cnt;
	pid_t pid;

	myname = argv[0];

	logfp = FUNC1(LOGFILE_NAME, "a+");
	if (!logfp) {
		FUNC3(stderr, "cannot open logfile '%s'\n", LOGFILE_NAME);
		FUNC0(1);
	}
	pid = FUNC2();
	switch (pid) {
	case 0:
		break;
	case -1:
		FUNC0(2);
	default:
		FUNC0(0);
	}

	FUNC5("MIC Daemon start\n");

	cnt = FUNC4();
	if (cnt == 0) {
		FUNC5("MIC module not loaded\n");
		FUNC0(3);
	}
	FUNC5("MIC found %d devices\n", cnt);

	FUNC6();

	FUNC0(0);
}