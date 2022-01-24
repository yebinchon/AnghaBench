#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  deadline; } ;
struct task_struct {int /*<<< orphan*/  pi_lock; struct rt_mutex_waiter* pi_blocked_on; TYPE_1__ dl; int /*<<< orphan*/  prio; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  deadline; int /*<<< orphan*/  prio; struct rt_mutex* lock; struct task_struct* task; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;
typedef  enum rtmutex_chainwalk { ____Placeholder_rtmutex_chainwalk } rtmutex_chainwalk ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int FUNC7 (struct task_struct*,int,struct rt_mutex*,struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*) ; 
 scalar_t__ FUNC8 (struct rt_mutex_waiter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt_mutex*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,struct rt_mutex_waiter*) ; 
 scalar_t__ FUNC12 (struct rt_mutex*) ; 
 struct task_struct* FUNC13 (struct rt_mutex*) ; 
 struct rt_mutex_waiter* FUNC14 (struct rt_mutex*) ; 
 struct rt_mutex* FUNC15 (struct task_struct*) ; 

__attribute__((used)) static int FUNC16(struct rt_mutex *lock,
				   struct rt_mutex_waiter *waiter,
				   struct task_struct *task,
				   enum rtmutex_chainwalk chwalk)
{
	struct task_struct *owner = FUNC13(lock);
	struct rt_mutex_waiter *top_waiter = waiter;
	struct rt_mutex *next_lock;
	int chain_walk = 0, res;

	FUNC1(&lock->wait_lock);

	/*
	 * Early deadlock detection. We really don't want the task to
	 * enqueue on itself just to untangle the mess later. It's not
	 * only an optimization. We drop the locks, so another waiter
	 * can come in before the chain walk detects the deadlock. So
	 * the other will detect the deadlock and return -EDEADLOCK,
	 * which is wrong, as the other waiter is not in a deadlock
	 * situation.
	 */
	if (owner == task)
		return -EDEADLK;

	FUNC2(&task->pi_lock);
	waiter->task = task;
	waiter->lock = lock;
	waiter->prio = task->prio;
	waiter->deadline = task->dl.deadline;

	/* Get the top priority waiter on the lock */
	if (FUNC12(lock))
		top_waiter = FUNC14(lock);
	FUNC10(lock, waiter);

	task->pi_blocked_on = waiter;

	FUNC4(&task->pi_lock);

	if (!owner)
		return 0;

	FUNC2(&owner->pi_lock);
	if (waiter == FUNC14(lock)) {
		FUNC9(owner, top_waiter);
		FUNC11(owner, waiter);

		FUNC6(owner);
		if (owner->pi_blocked_on)
			chain_walk = 1;
	} else if (FUNC8(waiter, chwalk)) {
		chain_walk = 1;
	}

	/* Store the lock on which owner is blocked or NULL */
	next_lock = FUNC15(owner);

	FUNC4(&owner->pi_lock);
	/*
	 * Even if full deadlock detection is on, if the owner is not
	 * blocked itself, we can avoid finding this out in the chain
	 * walk.
	 */
	if (!chain_walk || !next_lock)
		return 0;

	/*
	 * The owner can't disappear while holding a lock,
	 * so the owner struct is protected by wait_lock.
	 * Gets dropped in rt_mutex_adjust_prio_chain()!
	 */
	FUNC0(owner);

	FUNC5(&lock->wait_lock);

	res = FUNC7(owner, chwalk, lock,
					 next_lock, waiter, task);

	FUNC3(&lock->wait_lock);

	return res;
}