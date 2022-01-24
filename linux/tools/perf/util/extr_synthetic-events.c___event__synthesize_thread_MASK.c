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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct machine {char* root_dir; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  perf_event__handler_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (union perf_event*,int,struct machine*,int*,int*) ; 
 int FUNC4 (struct perf_tool*,union perf_event*,int,int /*<<< orphan*/ ,struct machine*) ; 
 scalar_t__ FUNC5 (struct perf_tool*,union perf_event*,int,int,int,int /*<<< orphan*/ ,struct machine*) ; 
 int FUNC6 (struct perf_tool*,union perf_event*,int,int,int /*<<< orphan*/ ,struct machine*,int) ; 
 scalar_t__ FUNC7 (struct perf_tool*,union perf_event*,int,int,int /*<<< orphan*/ ,struct machine*) ; 
 scalar_t__ FUNC8 (struct perf_tool*,union perf_event*,struct machine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,char**,int) ; 

__attribute__((used)) static int FUNC13(union perf_event *comm_event,
				      union perf_event *mmap_event,
				      union perf_event *fork_event,
				      union perf_event *namespaces_event,
				      pid_t pid, int full, perf_event__handler_t process,
				      struct perf_tool *tool, struct machine *machine, bool mmap_data)
{
	char filename[PATH_MAX];
	DIR *tasks;
	struct dirent *dirent;
	pid_t tgid, ppid;
	int rc = 0;

	/* special case: only send one comm event using passed in pid */
	if (!full) {
		tgid = FUNC4(tool, comm_event, pid,
						   process, machine);

		if (tgid == -1)
			return -1;

		if (FUNC7(tool, namespaces_event, pid,
						      tgid, process, machine) < 0)
			return -1;

		/*
		 * send mmap only for thread group leader
		 * see thread__init_map_groups
		 */
		if (pid == tgid &&
		    FUNC6(tool, mmap_event, pid, tgid,
						       process, machine, mmap_data))
			return -1;

		return 0;
	}

	if (FUNC1(machine))
		return 0;

	FUNC11(filename, sizeof(filename), "%s/proc/%d/task",
		 machine->root_dir, pid);

	tasks = FUNC2(filename);
	if (tasks == NULL) {
		FUNC9("couldn't open %s\n", filename);
		return 0;
	}

	while ((dirent = FUNC10(tasks)) != NULL) {
		char *end;
		pid_t _pid;

		_pid = FUNC12(dirent->d_name, &end, 10);
		if (*end)
			continue;

		rc = -1;
		if (FUNC3(comm_event, _pid, machine,
					     &tgid, &ppid) != 0)
			break;

		if (FUNC5(tool, fork_event, _pid, tgid,
						ppid, process, machine) < 0)
			break;

		if (FUNC7(tool, namespaces_event, _pid,
						      tgid, process, machine) < 0)
			break;

		/*
		 * Send the prepared comm event
		 */
		if (FUNC8(tool, comm_event, machine, process) != 0)
			break;

		rc = 0;
		if (_pid == pid) {
			/* process the parent's maps too */
			rc = FUNC6(tool, mmap_event, pid, tgid,
						process, machine, mmap_data);
			if (rc)
				break;
		}
	}

	FUNC0(tasks);
	return rc;
}