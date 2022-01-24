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
struct task_struct {struct mm_struct* mm; struct mm_struct* active_mm; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,struct mm_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

void FUNC6(struct mm_struct *mm)
{
	struct mm_struct *active_mm;
	struct task_struct *tsk = current;

	FUNC4(tsk);
	active_mm = tsk->active_mm;
	if (active_mm != mm) {
		FUNC2(mm);
		tsk->active_mm = mm;
	}
	tsk->mm = mm;
	FUNC3(active_mm, mm, tsk);
	FUNC5(tsk);
#ifdef finish_arch_post_lock_switch
	finish_arch_post_lock_switch();
#endif

	if (active_mm != mm)
		FUNC1(active_mm);
}