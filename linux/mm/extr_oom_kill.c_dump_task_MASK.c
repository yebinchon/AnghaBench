#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  comm; TYPE_1__* signal; TYPE_2__* mm; int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; } ;
struct oom_control {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  total_vm; } ;
struct TYPE_5__ {int /*<<< orphan*/  oom_score_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  MM_SWAPENTS ; 
 struct task_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct oom_control*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,struct oom_control*) ; 
 scalar_t__ FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 

__attribute__((used)) static int FUNC11(struct task_struct *p, void *arg)
{
	struct oom_control *oc = arg;
	struct task_struct *task;

	if (FUNC7(p))
		return 0;

	/* p may not have freeable memory in nodemask */
	if (!FUNC4(oc) && !FUNC6(p, oc))
		return 0;

	task = FUNC0(p);
	if (!task) {
		/*
		 * This is a kthread or all of p's threads have already
		 * detached their mm's.  There's no need to report
		 * them; they can't be oom killed anyway.
		 */
		return 0;
	}

	FUNC8("[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\n",
		task->pid, FUNC1(&init_user_ns, FUNC9(task)),
		task->tgid, task->mm->total_vm, FUNC3(task->mm),
		FUNC5(task->mm),
		FUNC2(task->mm, MM_SWAPENTS),
		task->signal->oom_score_adj, task->comm);
	FUNC10(task);

	return 0;
}