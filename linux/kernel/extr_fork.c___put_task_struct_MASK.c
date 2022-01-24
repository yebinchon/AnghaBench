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
struct task_struct {int /*<<< orphan*/  signal; int /*<<< orphan*/  usage; int /*<<< orphan*/  exit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,int) ; 

void FUNC10(struct task_struct *tsk)
{
	FUNC0(!tsk->exit_state);
	FUNC0(FUNC7(&tsk->usage));
	FUNC0(tsk == current);

	FUNC1(tsk);
	FUNC9(tsk, true);
	FUNC8(tsk);
	FUNC3(tsk);
	FUNC2(tsk);
	FUNC6(tsk->signal);

	if (!FUNC5(tsk))
		FUNC4(tsk);
}