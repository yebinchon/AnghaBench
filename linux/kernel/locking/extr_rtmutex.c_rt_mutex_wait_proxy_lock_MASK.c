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
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;
struct hrtimer_sleeper {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC0 (struct rt_mutex*,int /*<<< orphan*/ ,struct hrtimer_sleeper*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct rt_mutex *lock,
			       struct hrtimer_sleeper *to,
			       struct rt_mutex_waiter *waiter)
{
	int ret;

	FUNC2(&lock->wait_lock);
	/* sleep on the mutex */
	FUNC4(TASK_INTERRUPTIBLE);
	ret = FUNC0(lock, TASK_INTERRUPTIBLE, to, waiter);
	/*
	 * try_to_take_rt_mutex() sets the waiter bit unconditionally. We might
	 * have to fix that up.
	 */
	FUNC1(lock);
	FUNC3(&lock->wait_lock);

	return ret;
}