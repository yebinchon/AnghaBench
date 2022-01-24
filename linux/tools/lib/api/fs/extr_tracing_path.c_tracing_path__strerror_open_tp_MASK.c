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
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
#define  EACCES 129 
#define  ENOENT 128 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,...) ; 
 char* FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* tracing_events_path ; 
 char* FUNC5 () ; 

int FUNC6(int err, char *buf, size_t size,
				   const char *sys, const char *name)
{
	char sbuf[128];
	char filename[PATH_MAX];

	FUNC1(filename, PATH_MAX, "%s/%s", sys, name ?: "*");

	switch (err) {
	case ENOENT:
		/*
		 * We will get here if we can't find the tracepoint, but one of
		 * debugfs or tracefs is configured, which means you probably
		 * want some tracepoint which wasn't compiled in your kernel.
		 * - jirka
		 */
		if (FUNC0() || FUNC4()) {
			/* sdt markers */
			if (!FUNC3(filename, "sdt_", 4)) {
				FUNC1(buf, size,
					"Error:\tFile %s/%s not found.\n"
					"Hint:\tSDT event cannot be directly recorded on.\n"
					"\tPlease first use 'perf probe %s:%s' before recording it.\n",
					tracing_events_path, filename, sys, name);
			} else {
				FUNC1(buf, size,
					 "Error:\tFile %s/%s not found.\n"
					 "Hint:\tPerhaps this kernel misses some CONFIG_ setting to enable this feature?.\n",
					 tracing_events_path, filename);
			}
			break;
		}
		FUNC1(buf, size, "%s",
			 "Error:\tUnable to find debugfs/tracefs\n"
			 "Hint:\tWas your kernel compiled with debugfs/tracefs support?\n"
			 "Hint:\tIs the debugfs/tracefs filesystem mounted?\n"
			 "Hint:\tTry 'sudo mount -t debugfs nodev /sys/kernel/debug'");
		break;
	case EACCES: {
		FUNC1(buf, size,
			 "Error:\tNo permissions to read %s/%s\n"
			 "Hint:\tTry 'sudo mount -o remount,mode=755 %s'\n",
			 tracing_events_path, filename, FUNC5());
	}
		break;
	default:
		FUNC1(buf, size, "%s", FUNC2(err, sbuf, sizeof(sbuf)));
		break;
	}

	return 0;
}