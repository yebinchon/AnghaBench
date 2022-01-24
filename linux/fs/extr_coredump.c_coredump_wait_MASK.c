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
struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  core_state; } ;
struct core_thread {struct core_thread* next; int /*<<< orphan*/  task; } ;
struct TYPE_2__ {struct core_thread* next; struct task_struct* task; } ;
struct core_state {TYPE_1__ dumper; int /*<<< orphan*/  startup; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 struct task_struct* current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct task_struct*,struct mm_struct*,struct core_state*,int) ; 

__attribute__((used)) static int FUNC8(int exit_code, struct core_state *core_state)
{
	struct task_struct *tsk = current;
	struct mm_struct *mm = tsk->mm;
	int core_waiters = -EBUSY;

	FUNC3(&core_state->startup);
	core_state->dumper.task = tsk;
	core_state->dumper.next = NULL;

	if (FUNC0(&mm->mmap_sem))
		return -EINTR;

	if (!mm->core_state)
		core_waiters = FUNC7(tsk, mm, core_state, exit_code);
	FUNC4(&mm->mmap_sem);

	if (core_waiters > 0) {
		struct core_thread *ptr;

		FUNC2();
		FUNC5(&core_state->startup);
		FUNC1();
		/*
		 * Wait for all the threads to become inactive, so that
		 * all the thread context (extended register state, like
		 * fpu etc) gets copied to the memory.
		 */
		ptr = core_state->dumper.next;
		while (ptr != NULL) {
			FUNC6(ptr->task, 0);
			ptr = ptr->next;
		}
	}

	return core_waiters;
}