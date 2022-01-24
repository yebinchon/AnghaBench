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
struct task_struct {int /*<<< orphan*/  pi_lock; struct rt_mutex_waiter* pi_blocked_on; } ;
struct rt_mutex_waiter {struct rt_mutex* lock; } ;
struct rt_mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_MUTEX_MIN_CHAINWALK ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rt_mutex*,int /*<<< orphan*/ *,struct task_struct*) ; 
 scalar_t__ FUNC4 (struct rt_mutex_waiter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

void FUNC6(struct task_struct *task)
{
	struct rt_mutex_waiter *waiter;
	struct rt_mutex *next_lock;
	unsigned long flags;

	FUNC1(&task->pi_lock, flags);

	waiter = task->pi_blocked_on;
	if (!waiter || FUNC4(waiter, FUNC5(task))) {
		FUNC2(&task->pi_lock, flags);
		return;
	}
	next_lock = waiter->lock;
	FUNC2(&task->pi_lock, flags);

	/* gets dropped in rt_mutex_adjust_prio_chain()! */
	FUNC0(task);

	FUNC3(task, RT_MUTEX_MIN_CHAINWALK, NULL,
				   next_lock, NULL, task);
}