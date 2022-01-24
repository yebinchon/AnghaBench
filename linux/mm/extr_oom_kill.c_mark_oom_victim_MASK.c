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
struct task_struct {int /*<<< orphan*/  pid; TYPE_1__* signal; struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  oom_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_OOM_VICTIM ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oom_killer_disabled ; 
 int /*<<< orphan*/  oom_victims ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct task_struct *tsk)
{
	struct mm_struct *mm = tsk->mm;

	FUNC0(oom_killer_disabled);
	/* OOM killer might race with memcg OOM */
	if (FUNC6(tsk, TIF_MEMDIE))
		return;

	/* oom_mm is bound to the signal struct life time. */
	if (!FUNC3(&tsk->signal->oom_mm, NULL, mm)) {
		FUNC4(tsk->signal->oom_mm);
		FUNC5(MMF_OOM_VICTIM, &mm->flags);
	}

	/*
	 * Make sure that the task is woken up from uninterruptible sleep
	 * if it is frozen because OOM killer wouldn't be able to free
	 * any memory and livelock. freezing_slow_path will tell the freezer
	 * that TIF_MEMDIE tasks should be ignored.
	 */
	FUNC1(tsk);
	FUNC2(&oom_victims);
	FUNC7(tsk->pid);
}