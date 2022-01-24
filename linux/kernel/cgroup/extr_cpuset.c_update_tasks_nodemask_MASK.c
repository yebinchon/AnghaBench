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
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct css_task_iter {int dummy; } ;
struct cpuset {int /*<<< orphan*/  old_mems_allowed; int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  css; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 struct cpuset* cpuset_being_rebound ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct css_task_iter*) ; 
 struct task_struct* FUNC3 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct css_task_iter*) ; 
 struct mm_struct* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuset*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cpuset *cs)
{
	static nodemask_t newmems;	/* protected by cpuset_mutex */
	struct css_task_iter it;
	struct task_struct *task;

	cpuset_being_rebound = cs;		/* causes mpol_dup() rebind */

	FUNC6(cs, &newmems);

	/*
	 * The mpol_rebind_mm() call takes mmap_sem, which we couldn't
	 * take while holding tasklist_lock.  Forks can happen - the
	 * mpol_dup() cpuset_being_rebound check will catch such forks,
	 * and rebind their vma mempolicies too.  Because we still hold
	 * the global cpuset_mutex, we know that no other rebind effort
	 * will be contending for the global variable cpuset_being_rebound.
	 * It's ok if we rebind the same mm twice; mpol_rebind_mm()
	 * is idempotent.  Also migrate pages in each mm to new nodes.
	 */
	FUNC4(&cs->css, 0, &it);
	while ((task = FUNC3(&it))) {
		struct mm_struct *mm;
		bool migrate;

		FUNC0(task, &newmems);

		mm = FUNC5(task);
		if (!mm)
			continue;

		migrate = FUNC7(cs);

		FUNC9(mm, &cs->mems_allowed);
		if (migrate)
			FUNC1(mm, &cs->old_mems_allowed, &newmems);
		else
			FUNC8(mm);
	}
	FUNC2(&it);

	/*
	 * All the tasks' nodemasks have been updated, update
	 * cs->old_mems_allowed.
	 */
	cs->old_mems_allowed = newmems;

	/* We're done rebinding vmas to this cpuset's new mems_allowed. */
	cpuset_being_rebound = NULL;
}