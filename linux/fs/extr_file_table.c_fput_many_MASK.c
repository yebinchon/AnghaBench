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
struct task_struct {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  fu_llist; int /*<<< orphan*/  fu_rcuhead; } ;
struct file {TYPE_1__ f_u; int /*<<< orphan*/  f_count; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  ____fput ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  delayed_fput_list ; 
 int /*<<< orphan*/  delayed_fput_work ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ *,int) ; 

void FUNC7(struct file *file, unsigned int refs)
{
	if (FUNC0(refs, &file->f_count)) {
		struct task_struct *task = current;

		if (FUNC3(!FUNC1() && !(task->flags & PF_KTHREAD))) {
			FUNC2(&file->f_u.fu_rcuhead, ____fput);
			if (!FUNC6(task, &file->f_u.fu_rcuhead, true))
				return;
			/*
			 * After this task has run exit_task_work(),
			 * task_work_add() will fail.  Fall through to delayed
			 * fput to avoid leaking *file.
			 */
		}

		if (FUNC4(&file->f_u.fu_llist, &delayed_fput_list))
			FUNC5(&delayed_fput_work, 1);
	}
}