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
struct task_struct {size_t pid; int /*<<< orphan*/  comm; } ;
struct TYPE_2__ {unsigned int* map_pid_to_cmdline; int cmdline_idx; int cmdline_num; unsigned int* map_cmdline_to_pid; } ;

/* Variables and functions */
 unsigned int NO_CMDLINE_MAP ; 
 size_t PID_MAX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* savedcmd ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_cmdline_lock ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct task_struct *tsk)
{
	unsigned pid, idx;

	/* treat recording of idle task as a success */
	if (!tsk->pid)
		return 1;

	if (FUNC3(tsk->pid > PID_MAX_DEFAULT))
		return 0;

	/*
	 * It's not the end of the world if we don't get
	 * the lock, but we also don't want to spin
	 * nor do we want to disable interrupts,
	 * so if we miss here, then better luck next time.
	 */
	if (!FUNC0(&trace_cmdline_lock))
		return 0;

	idx = savedcmd->map_pid_to_cmdline[tsk->pid];
	if (idx == NO_CMDLINE_MAP) {
		idx = (savedcmd->cmdline_idx + 1) % savedcmd->cmdline_num;

		/*
		 * Check whether the cmdline buffer at idx has a pid
		 * mapped. We are going to overwrite that entry so we
		 * need to clear the map_pid_to_cmdline. Otherwise we
		 * would read the new comm for the old pid.
		 */
		pid = savedcmd->map_cmdline_to_pid[idx];
		if (pid != NO_CMDLINE_MAP)
			savedcmd->map_pid_to_cmdline[pid] = NO_CMDLINE_MAP;

		savedcmd->map_cmdline_to_pid[idx] = tsk->pid;
		savedcmd->map_pid_to_cmdline[tsk->pid] = idx;

		savedcmd->cmdline_idx = idx;
	}

	FUNC2(idx, tsk->comm);

	FUNC1(&trace_cmdline_lock);

	return 1;
}