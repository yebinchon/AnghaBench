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

/* Variables and functions */
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_mutex*,struct rt_mutex_waiter*) ; 
 scalar_t__ FUNC4 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_mutex*,scalar_t__,struct rt_mutex_waiter*) ; 

bool FUNC6(struct rt_mutex *lock,
				 struct rt_mutex_waiter *waiter)
{
	bool cleanup = false;

	FUNC1(&lock->wait_lock);
	/*
	 * Do an unconditional try-lock, this deals with the lock stealing
	 * state where __rt_mutex_futex_unlock() -> mark_wakeup_next_waiter()
	 * sets a NULL owner.
	 *
	 * We're not interested in the return value, because the subsequent
	 * test on rt_mutex_owner() will infer that. If the trylock succeeded,
	 * we will own the lock and it will have removed the waiter. If we
	 * failed the trylock, we're still not owner and we need to remove
	 * ourselves.
	 */
	FUNC5(lock, current, waiter);
	/*
	 * Unless we're the owner; we're still enqueued on the wait_list.
	 * So check if we became owner, if not, take us off the wait_list.
	 */
	if (FUNC4(lock) != current) {
		FUNC3(lock, waiter);
		cleanup = true;
	}
	/*
	 * try_to_take_rt_mutex() sets the waiter bit unconditionally. We might
	 * have to fix that up.
	 */
	FUNC0(lock);

	FUNC2(&lock->wait_lock);

	return cleanup;
}