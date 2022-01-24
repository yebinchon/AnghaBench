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
struct task_struct {int /*<<< orphan*/  mems_allowed_seq; int /*<<< orphan*/  mems_allowed; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct task_struct *tsk,
					nodemask_t *newmems)
{
	FUNC4(tsk);

	FUNC0();
	FUNC6(&tsk->mems_allowed_seq);

	FUNC3(tsk->mems_allowed, tsk->mems_allowed, *newmems);
	FUNC2(tsk, newmems);
	tsk->mems_allowed = *newmems;

	FUNC7(&tsk->mems_allowed_seq);
	FUNC1();

	FUNC5(tsk);
}