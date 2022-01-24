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
struct rcuwait {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

void FUNC5(struct rcuwait *w)
{
	struct task_struct *task;

	FUNC1();

	/*
	 * Order condition vs @task, such that everything prior to the load
	 * of @task is visible. This is the condition as to why the user called
	 * rcuwait_trywake() in the first place. Pairs with set_current_state()
	 * barrier (A) in rcuwait_wait_event().
	 *
	 *    WAIT                WAKE
	 *    [S] tsk = current	  [S] cond = true
	 *        MB (A)	      MB (B)
	 *    [L] cond		  [L] tsk
	 */
	FUNC3(); /* (B) */

	task = FUNC0(w->task);
	if (task)
		FUNC4(task);
	FUNC2();
}