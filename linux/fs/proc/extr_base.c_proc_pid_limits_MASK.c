#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; } ;
struct seq_file {int dummy; } ;
struct rlimit {char* rlim_cur; char* rlim_max; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct TYPE_4__ {char* unit; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  rlim; } ;

/* Variables and functions */
 char* RLIM_INFINITY ; 
 int RLIM_NLIMITS ; 
 TYPE_2__* lnames ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct rlimit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, struct pid_namespace *ns,
			   struct pid *pid, struct task_struct *task)
{
	unsigned int i;
	unsigned long flags;

	struct rlimit rlim[RLIM_NLIMITS];

	if (!FUNC0(task, &flags))
		return 0;
	FUNC1(rlim, task->signal->rlim, sizeof(struct rlimit) * RLIM_NLIMITS);
	FUNC5(task, &flags);

	/*
	 * print the file header
	 */
	FUNC4(m, "Limit                     "
		"Soft Limit           "
		"Hard Limit           "
		"Units     \n");

	for (i = 0; i < RLIM_NLIMITS; i++) {
		if (rlim[i].rlim_cur == RLIM_INFINITY)
			FUNC2(m, "%-25s %-20s ",
				   lnames[i].name, "unlimited");
		else
			FUNC2(m, "%-25s %-20lu ",
				   lnames[i].name, rlim[i].rlim_cur);

		if (rlim[i].rlim_max == RLIM_INFINITY)
			FUNC2(m, "%-20s ", "unlimited");
		else
			FUNC2(m, "%-20lu ", rlim[i].rlim_max);

		if (lnames[i].unit)
			FUNC2(m, "%-10s\n", lnames[i].unit);
		else
			FUNC3(m, '\n');
	}

	return 0;
}