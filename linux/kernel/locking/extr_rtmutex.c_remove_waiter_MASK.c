#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  pi_lock; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/ * pi_blocked_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_MUTEX_MIN_CHAINWALK ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ,struct rt_mutex*,struct rt_mutex*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt_mutex*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,struct rt_mutex_waiter*) ; 
 scalar_t__ FUNC11 (struct rt_mutex*) ; 
 struct task_struct* FUNC12 (struct rt_mutex*) ; 
 struct rt_mutex_waiter* FUNC13 (struct rt_mutex*) ; 
 struct rt_mutex* FUNC14 (struct task_struct*) ; 

__attribute__((used)) static void FUNC15(struct rt_mutex *lock,
			  struct rt_mutex_waiter *waiter)
{
	bool is_top_waiter = (waiter == FUNC13(lock));
	struct task_struct *owner = FUNC12(lock);
	struct rt_mutex *next_lock;

	FUNC1(&lock->wait_lock);

	FUNC2(&current->pi_lock);
	FUNC8(lock, waiter);
	current->pi_blocked_on = NULL;
	FUNC4(&current->pi_lock);

	/*
	 * Only update priority if the waiter was the highest priority
	 * waiter of the lock and there is an owner to update.
	 */
	if (!owner || !is_top_waiter)
		return;

	FUNC2(&owner->pi_lock);

	FUNC9(owner, waiter);

	if (FUNC11(lock))
		FUNC10(owner, FUNC13(lock));

	FUNC6(owner);

	/* Store the lock on which owner is blocked or NULL */
	next_lock = FUNC14(owner);

	FUNC4(&owner->pi_lock);

	/*
	 * Don't walk the chain, if the owner task is not blocked
	 * itself.
	 */
	if (!next_lock)
		return;

	/* gets dropped in rt_mutex_adjust_prio_chain()! */
	FUNC0(owner);

	FUNC5(&lock->wait_lock);

	FUNC7(owner, RT_MUTEX_MIN_CHAINWALK, lock,
				   next_lock, NULL, current);

	FUNC3(&lock->wait_lock);
}