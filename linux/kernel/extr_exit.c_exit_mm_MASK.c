#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct core_state* core_state; } ;
struct core_thread {TYPE_2__* task; int /*<<< orphan*/  next; } ;
struct TYPE_7__ {int /*<<< orphan*/  next; } ;
struct core_state {int /*<<< orphan*/  startup; int /*<<< orphan*/  nr_threads; TYPE_1__ dumper; } ;
struct TYPE_8__ {struct mm_struct* mm; struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct core_thread*) ; 

__attribute__((used)) static void FUNC19(void)
{
	struct mm_struct *mm = current->mm;
	struct core_state *core_state;

	FUNC8(current, mm);
	if (!mm)
		return;
	FUNC13(mm);
	/*
	 * Serialize with any possible pending coredump.
	 * We must hold mmap_sem around checking core_state
	 * and clearing tsk->mm.  The core-inducing thread
	 * will increment ->nr_threads for each thread in the
	 * group with ->mm != NULL.
	 */
	FUNC4(&mm->mmap_sem);
	core_state = mm->core_state;
	if (core_state) {
		struct core_thread self;

		FUNC17(&mm->mmap_sem);

		self.task = current;
		self.next = FUNC18(&core_state->dumper.next, &self);
		/*
		 * Implies mb(), the result of xchg() must be visible
		 * to core_state->dumper.
		 */
		if (FUNC2(&core_state->nr_threads))
			FUNC3(&core_state->startup);

		for (;;) {
			FUNC12(TASK_UNINTERRUPTIBLE);
			if (!self.task) /* see coredump_finish() */
				break;
			FUNC7();
		}
		FUNC1(TASK_RUNNING);
		FUNC4(&mm->mmap_sem);
	}
	FUNC10(mm);
	FUNC0(mm != current->active_mm);
	/* more a memory barrier than a real lock */
	FUNC14(current);
	current->mm = NULL;
	FUNC17(&mm->mmap_sem);
	FUNC5(mm, current);
	FUNC15(current);
	FUNC9(mm);
	FUNC11(mm);
	if (FUNC16(TIF_MEMDIE))
		FUNC6();
}