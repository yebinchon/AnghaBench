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
struct thread {int ppid; } ;
struct task {int /*<<< orphan*/  children; int /*<<< orphan*/  list; struct thread* thread; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct task* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC3 (struct machine*,int,int) ; 
 struct task* FUNC4 (struct thread*) ; 

__attribute__((used)) static struct task *FUNC5(struct task *task, struct machine *machine)
{
	struct thread *parent_thread, *thread = task->thread;
	struct task   *parent_task;

	/* Already listed. */
	if (!FUNC2(&task->list))
		return NULL;

	/* Last one in the chain. */
	if (thread->ppid == -1)
		return task;

	parent_thread = FUNC3(machine, -1, thread->ppid);
	if (!parent_thread)
		return FUNC0(-ENOENT);

	parent_task = FUNC4(parent_thread);
	FUNC1(&task->list, &parent_task->children);
	return FUNC5(parent_task, machine);
}