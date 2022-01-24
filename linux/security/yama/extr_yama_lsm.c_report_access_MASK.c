#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; int /*<<< orphan*/  alloc_lock; } ;
struct access_report_info {char const* access; int /*<<< orphan*/  work; struct task_struct* agent; struct task_struct* target; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  __report_access ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct access_report_info*) ; 
 struct access_report_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(const char *access, struct task_struct *target,
				struct task_struct *agent)
{
	struct access_report_info *info;
	char agent_comm[sizeof(agent->comm)];

	FUNC1(&target->alloc_lock); /* for target->comm */

	if (current->flags & PF_KTHREAD) {
		/* I don't think kthreads call task_work_run() before exiting.
		 * Imagine angry ranting about procfs here.
		 */
		FUNC7(
		    "ptrace %s of \"%s\"[%d] was attempted by \"%s\"[%d]\n",
		    access, target->comm, target->pid,
		    FUNC2(agent_comm, agent), agent->pid);
		return;
	}

	info = FUNC6(sizeof(*info), GFP_ATOMIC);
	if (!info)
		return;
	FUNC4(&info->work, __report_access);
	FUNC3(target);
	FUNC3(agent);
	info->access = access;
	info->target = target;
	info->agent = agent;
	if (FUNC9(current, &info->work, true) == 0)
		return; /* success */

	FUNC0(1, "report_access called from exiting task");
	FUNC8(target);
	FUNC8(agent);
	FUNC5(info);
}