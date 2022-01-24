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
struct task_struct {unsigned int exit_code; scalar_t__ exit_state; int /*<<< orphan*/  ptrace; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PTRACE_DETACH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct task_struct *child, unsigned int data)
{
	if (!FUNC4(data))
		return -EIO;

	/* Architecture-specific hardware disable .. */
	FUNC3(child);

	FUNC5(&tasklist_lock);
	/*
	 * We rely on ptrace_freeze_traced(). It can't be killed and
	 * untraced by another thread, it can't be a zombie.
	 */
	FUNC0(!child->ptrace || child->exit_state);
	/*
	 * tasklist_lock avoids the race with wait_task_stopped(), see
	 * the comment in ptrace_resume().
	 */
	child->exit_code = data;
	FUNC1(current, child);
	FUNC6(&tasklist_lock);

	FUNC2(child, PTRACE_DETACH);

	return 0;
}