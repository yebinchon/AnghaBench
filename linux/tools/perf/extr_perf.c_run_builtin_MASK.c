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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**) ;int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int RUN_SETUP ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int USE_PAGER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  perf_env ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC18 (int,char const**) ; 
 int use_browser ; 
 int use_pager ; 

__attribute__((used)) static int FUNC19(struct cmd_struct *p, int argc, const char **argv)
{
	int status;
	struct stat st;
	char sbuf[STRERR_BUFSIZE];

	if (use_browser == -1)
		use_browser = FUNC3(p->cmd);

	if (use_pager == -1 && p->option & RUN_SETUP)
		use_pager = FUNC4(p->cmd);
	if (use_pager == -1 && p->option & USE_PAGER)
		use_pager = 1;
	FUNC5();

	FUNC15(&perf_env);
	FUNC16(&perf_env, argc, argv);
	status = p->fn(argc, argv);
	FUNC13();
	FUNC6(status);
	FUNC14(&perf_env);
	FUNC2();

	if (status)
		return status & 0xff;

	/* Somebody closed stdout? */
	if (FUNC12(FUNC10(stdout), &st))
		return 0;
	/* Ignore write errors for pipes and sockets.. */
	if (FUNC0(st.st_mode) || FUNC1(st.st_mode))
		return 0;

	status = 1;
	/* Check for ENOSPC and EIO errors.. */
	if (FUNC9(stdout)) {
		FUNC11(stderr, "write failure on standard output: %s",
			FUNC17(errno, sbuf, sizeof(sbuf)));
		goto out;
	}
	if (FUNC8(stdout)) {
		FUNC11(stderr, "unknown write failure on standard output");
		goto out;
	}
	if (FUNC7(stdout)) {
		FUNC11(stderr, "close failed on standard output: %s",
			FUNC17(errno, sbuf, sizeof(sbuf)));
		goto out;
	}
	status = 0;
out:
	return status;
}