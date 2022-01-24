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
struct task_struct {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/ * pi_blocked_on; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_mutex*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,struct rt_mutex_waiter*) ; 
 scalar_t__ FUNC7 (struct rt_mutex*) ; 
 scalar_t__ FUNC8 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt_mutex*,struct task_struct*) ; 
 struct rt_mutex_waiter* FUNC10 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

__attribute__((used)) static int FUNC13(struct rt_mutex *lock, struct task_struct *task,
				struct rt_mutex_waiter *waiter)
{
	FUNC1(&lock->wait_lock);

	/*
	 * Before testing whether we can acquire @lock, we set the
	 * RT_MUTEX_HAS_WAITERS bit in @lock->owner. This forces all
	 * other tasks which try to modify @lock into the slow path
	 * and they serialize on @lock->wait_lock.
	 *
	 * The RT_MUTEX_HAS_WAITERS bit can have a transitional state
	 * as explained at the top of this file if and only if:
	 *
	 * - There is a lock owner. The caller must fixup the
	 *   transient state if it does a trylock or leaves the lock
	 *   function due to a signal or timeout.
	 *
	 * - @task acquires the lock and there are no other
	 *   waiters. This is undone in rt_mutex_set_owner(@task) at
	 *   the end of this function.
	 */
	FUNC2(lock);

	/*
	 * If @lock has an owner, give up.
	 */
	if (FUNC8(lock))
		return 0;

	/*
	 * If @waiter != NULL, @task has already enqueued the waiter
	 * into @lock waiter tree. If @waiter == NULL then this is a
	 * trylock attempt.
	 */
	if (waiter) {
		/*
		 * If waiter is not the highest priority waiter of
		 * @lock, give up.
		 */
		if (waiter != FUNC10(lock))
			return 0;

		/*
		 * We can acquire the lock. Remove the waiter from the
		 * lock waiters tree.
		 */
		FUNC5(lock, waiter);

	} else {
		/*
		 * If the lock has waiters already we check whether @task is
		 * eligible to take over the lock.
		 *
		 * If there are no other waiters, @task can acquire
		 * the lock.  @task->pi_blocked_on is NULL, so it does
		 * not need to be dequeued.
		 */
		if (FUNC7(lock)) {
			/*
			 * If @task->prio is greater than or equal to
			 * the top waiter priority (kernel view),
			 * @task lost.
			 */
			if (!FUNC11(FUNC12(task),
						  FUNC10(lock)))
				return 0;

			/*
			 * The current top waiter stays enqueued. We
			 * don't have to change anything in the lock
			 * waiters order.
			 */
		} else {
			/*
			 * No waiters. Take the lock without the
			 * pi_lock dance.@task->pi_blocked_on is NULL
			 * and we have no waiters to enqueue in @task
			 * pi waiters tree.
			 */
			goto takeit;
		}
	}

	/*
	 * Clear @task->pi_blocked_on. Requires protection by
	 * @task->pi_lock. Redundant operation for the @waiter == NULL
	 * case, but conditionals are more expensive than a redundant
	 * store.
	 */
	FUNC3(&task->pi_lock);
	task->pi_blocked_on = NULL;
	/*
	 * Finish the lock acquisition. @task is the new owner. If
	 * other waiters exist we have to insert the highest priority
	 * waiter into @task->pi_waiters tree.
	 */
	if (FUNC7(lock))
		FUNC6(task, FUNC10(lock));
	FUNC4(&task->pi_lock);

takeit:
	/* We got the lock. */
	FUNC0(lock);

	/*
	 * This either preserves the RT_MUTEX_HAS_WAITERS bit if there
	 * are still waiters or clears it.
	 */
	FUNC9(lock, task);

	return 1;
}