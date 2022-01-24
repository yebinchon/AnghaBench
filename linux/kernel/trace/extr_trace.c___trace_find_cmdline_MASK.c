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
struct TYPE_2__ {unsigned int* map_pid_to_cmdline; } ;

/* Variables and functions */
 unsigned int NO_CMDLINE_MAP ; 
 int PID_MAX_DEFAULT ; 
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* savedcmd ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int pid, char comm[])
{
	unsigned map;

	if (!pid) {
		FUNC2(comm, "<idle>");
		return;
	}

	if (FUNC0(pid < 0)) {
		FUNC2(comm, "<XXX>");
		return;
	}

	if (pid > PID_MAX_DEFAULT) {
		FUNC2(comm, "<...>");
		return;
	}

	map = savedcmd->map_pid_to_cmdline[pid];
	if (map != NO_CMDLINE_MAP)
		FUNC3(comm, FUNC1(map), TASK_COMM_LEN);
	else
		FUNC2(comm, "<...>");
}