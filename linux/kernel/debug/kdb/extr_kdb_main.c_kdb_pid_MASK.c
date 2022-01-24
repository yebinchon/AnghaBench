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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int KDB_ARGCOUNT ; 
 int KDB_BADINT ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 TYPE_1__* kdb_current_task ; 
 int /*<<< orphan*/  kdb_initial_cpu ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (char const*,unsigned long*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv)
{
	struct task_struct *p;
	unsigned long val;
	int diag;

	if (argc > 1)
		return KDB_ARGCOUNT;

	if (argc) {
		if (FUNC5(argv[1], "R") == 0) {
			p = FUNC0(kdb_initial_cpu);
		} else {
			diag = FUNC4(argv[1], &val);
			if (diag)
				return KDB_BADINT;

			p = FUNC1((pid_t)val,	&init_pid_ns);
			if (!p) {
				FUNC2("No task with pid=%d\n", (pid_t)val);
				return 0;
			}
		}
		FUNC3(p);
	}
	FUNC2("KDB current process is %s(pid=%d)\n",
		   kdb_current_task->comm,
		   kdb_current_task->pid);

	return 0;
}