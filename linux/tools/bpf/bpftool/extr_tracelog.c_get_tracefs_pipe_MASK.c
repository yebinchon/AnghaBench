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
typedef  int /*<<< orphan*/  format ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  TRACEFS_MAGIC ; 
 scalar_t__ block_mount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const* const) ; 
 scalar_t__ FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(char *mnt)
{
	static const char * const known_mnts[] = {
		"/sys/kernel/debug/tracing",
		"/sys/kernel/tracing",
		"/tracing",
		"/trace",
	};
	const char *pipe_name = "/trace_pipe";
	const char *fstype = "tracefs";
	char type[100], format[32];
	const char * const *ptr;
	bool found = false;
	FILE *fp;

	for (ptr = known_mnts; ptr < known_mnts + FUNC0(known_mnts); ptr++)
		if (FUNC2(TRACEFS_MAGIC, mnt, *ptr))
			goto exit_found;

	fp = FUNC3("/proc/mounts", "r");
	if (!fp)
		return false;

	/* Allow room for NULL terminating byte and pipe file name */
	FUNC7(format, sizeof(format), "%%*s %%%zds %%99s %%*s %%*d %%*d\\n",
		 PATH_MAX - FUNC11(pipe_name) - 1);
	while (FUNC4(fp, format, mnt, type) == 2)
		if (FUNC9(type, fstype) == 0) {
			found = true;
			break;
		}
	FUNC1(fp);

	/* The string from fscanf() might be truncated, check mnt is valid */
	if (found && FUNC12(mnt, TRACEFS_MAGIC))
		goto exit_found;

	if (block_mount)
		return false;

	FUNC6("could not find tracefs, attempting to mount it now");
	/* Most of the time, tracefs is automatically mounted by debugfs at
	 * /sys/kernel/debug/tracing when we try to access it. If we could not
	 * find it, it is likely that debugfs is not mounted. Let's give one
	 * attempt at mounting just tracefs at /sys/kernel/tracing.
	 */
	FUNC10(mnt, known_mnts[1]);
	if (FUNC5(mnt))
		return false;

exit_found:
	FUNC8(mnt, pipe_name);
	return true;
}