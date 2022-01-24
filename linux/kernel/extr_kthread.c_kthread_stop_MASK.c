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
struct task_struct {int exit_code; } ;
struct kthread {int /*<<< orphan*/  exited; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTHREAD_SHOULD_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kthread* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

int FUNC9(struct task_struct *k)
{
	struct kthread *kthread;
	int ret;

	FUNC5(k);

	FUNC0(k);
	kthread = FUNC4(k);
	FUNC3(KTHREAD_SHOULD_STOP, &kthread->flags);
	FUNC1(k);
	FUNC8(k);
	FUNC7(&kthread->exited);
	ret = k->exit_code;
	FUNC2(k);

	FUNC6(ret);
	return ret;
}