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
struct task_struct {int flags; int /*<<< orphan*/  cg_list; } ;
struct css_set {int /*<<< orphan*/  tasks; int /*<<< orphan*/  mg_tasks; } ;

/* Variables and functions */
 int PF_EXITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct css_set*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC2 (struct css_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct css_set*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct css_set*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct task_struct *task,
			      struct css_set *from_cset, struct css_set *to_cset,
			      bool use_mg_tasks)
{
	FUNC8(&css_set_lock);

	if (to_cset && !FUNC2(to_cset))
		FUNC4(to_cset, true);

	if (from_cset) {
		FUNC0(FUNC7(&task->cg_list));

		FUNC3(from_cset, task);
		FUNC6(&task->cg_list);
		if (!FUNC2(from_cset))
			FUNC4(from_cset, false);
	} else {
		FUNC0(!FUNC7(&task->cg_list));
	}

	if (to_cset) {
		/*
		 * We are synchronized through cgroup_threadgroup_rwsem
		 * against PF_EXITING setting such that we can't race
		 * against cgroup_exit() changing the css_set to
		 * init_css_set and dropping the old one.
		 */
		FUNC0(task->flags & PF_EXITING);

		FUNC1(task, to_cset);
		FUNC5(&task->cg_list, use_mg_tasks ? &to_cset->mg_tasks :
							     &to_cset->tasks);
	}
}