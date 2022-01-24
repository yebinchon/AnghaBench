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
struct task_struct {struct task_struct* group_leader; } ;

/* Variables and functions */
 int KDB_ARGCOUNT ; 
 int KDB_BADINT ; 
 struct task_struct* FUNC0 (long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,long) ; 
 long FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv)
{
	long sig, pid;
	char *endp;
	struct task_struct *p;

	if (argc != 2)
		return KDB_ARGCOUNT;

	sig = FUNC3(argv[1], &endp, 0);
	if (*endp)
		return KDB_BADINT;
	if ((sig >= 0) || !FUNC4(-sig)) {
		FUNC1("Invalid signal parameter.<-signal>\n");
		return 0;
	}
	sig = -sig;

	pid = FUNC3(argv[2], &endp, 0);
	if (*endp)
		return KDB_BADINT;
	if (pid <= 0) {
		FUNC1("Process ID must be large than 0.\n");
		return 0;
	}

	/* Find the process. */
	p = FUNC0(pid, &init_pid_ns);
	if (!p) {
		FUNC1("The specified process isn't found.\n");
		return 0;
	}
	p = p->group_leader;
	FUNC2(p, sig);
	return 0;
}