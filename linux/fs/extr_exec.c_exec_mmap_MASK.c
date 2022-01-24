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
struct task_struct {TYPE_1__* signal; struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; scalar_t__ vmacache_seqnum; int /*<<< orphan*/  core_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  maxrss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct mm_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 

__attribute__((used)) static int FUNC15(struct mm_struct *mm)
{
	struct task_struct *tsk;
	struct mm_struct *old_mm, *active_mm;

	/* Notify parent that we're no longer interested in the old VM */
	tsk = current;
	old_mm = current->mm;
	FUNC4(tsk, old_mm);

	if (old_mm) {
		FUNC9(old_mm);
		/*
		 * Make sure that if there is a core dump in progress
		 * for the old mm, we get out and die instead of going
		 * through with the exec.  We must hold mmap_sem around
		 * checking core_state and changing tsk->mm.
		 */
		FUNC2(&old_mm->mmap_sem);
		if (FUNC12(old_mm->core_state)) {
			FUNC13(&old_mm->mmap_sem);
			return -EINTR;
		}
	}
	FUNC10(tsk);
	active_mm = tsk->active_mm;
	FUNC3(mm);
	tsk->mm = mm;
	tsk->active_mm = mm;
	FUNC1(active_mm, mm);
	tsk->mm->vmacache_seqnum = 0;
	FUNC14(tsk);
	FUNC11(tsk);
	if (old_mm) {
		FUNC13(&old_mm->mmap_sem);
		FUNC0(active_mm != old_mm);
		FUNC8(&tsk->signal->maxrss, old_mm);
		FUNC5(old_mm);
		FUNC7(old_mm);
		return 0;
	}
	FUNC6(active_mm);
	return 0;
}