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
 int /*<<< orphan*/  ENOENT ; 
 int ERR_RUN_COMMAND_EXEC ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char**,char*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 

__attribute__((used)) static void FUNC6(const char **argv)
{
	char *cmd;
	const char *tmp;
	int status;

	if (FUNC1(&cmd, "perf-%s", argv[0]) < 0)
		goto do_die;

	/*
	 * argv[0] must be the perf command, but the argv array
	 * belongs to the caller, and may be reused in
	 * subsequent loop iterations. Save argv[0] and
	 * restore it on error.
	 */
	tmp = argv[0];
	argv[0] = cmd;

	/*
	 * if we fail because the command is not found, it is
	 * OK to return. Otherwise, we just pass along the status code.
	 */
	status = FUNC4(argv, 0);
	if (status != -ERR_RUN_COMMAND_EXEC) {
		if (FUNC0(status)) {
do_die:
			FUNC3("FATAL: unable to run '%s'", argv[0]);
			status = -128;
		}
		FUNC2(-status);
	}
	errno = ENOENT; /* as if we called execvp */

	argv[0] = tmp;
	FUNC5(&cmd);
}