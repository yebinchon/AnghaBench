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
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_MUTEX_FULL_CHAINWALK ; 
 int /*<<< orphan*/  FUNC0 (struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*) ; 
 int FUNC3 (struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rt_mutex*,struct task_struct*,int /*<<< orphan*/ *) ; 

int FUNC5(struct rt_mutex *lock,
			      struct rt_mutex_waiter *waiter,
			      struct task_struct *task)
{
	int ret;

	FUNC1(&lock->wait_lock);

	if (FUNC4(lock, task, NULL))
		return 1;

	/* We enforce deadlock detection for futexes */
	ret = FUNC3(lock, waiter, task,
				      RT_MUTEX_FULL_CHAINWALK);

	if (ret && !FUNC2(lock)) {
		/*
		 * Reset the return value. We might have
		 * returned with -EDEADLK and the owner
		 * released the lock while we were walking the
		 * pi chain.  Let the waiter sort it out.
		 */
		ret = 0;
	}

	FUNC0(waiter);

	return ret;
}