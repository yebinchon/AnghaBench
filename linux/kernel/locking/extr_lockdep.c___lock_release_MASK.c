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
struct task_struct {unsigned int lockdep_depth; int /*<<< orphan*/  curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {int /*<<< orphan*/  prev_chain_key; scalar_t__ references; int /*<<< orphan*/  pin_count; struct lockdep_map* instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  debug_locks ; 
 struct held_lock* FUNC2 (struct task_struct*,struct lockdep_map*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct held_lock*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC5 (struct task_struct*,unsigned int,int,unsigned int*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct lockdep_map *lock, unsigned long ip)
{
	struct task_struct *curr = current;
	unsigned int depth, merged = 1;
	struct held_lock *hlock;
	int i;

	if (FUNC6(!debug_locks))
		return 0;

	depth = curr->lockdep_depth;
	/*
	 * So we're all set to release this lock.. wait what lock? We don't
	 * own any locks, you've been drinking again?
	 */
	if (depth <= 0) {
		FUNC4(curr, lock, ip);
		return 0;
	}

	/*
	 * Check whether the lock exists in the current stack
	 * of held locks:
	 */
	hlock = FUNC2(curr, lock, depth, &i);
	if (!hlock) {
		FUNC4(curr, lock, ip);
		return 0;
	}

	if (hlock->instance == lock)
		FUNC3(hlock);

	FUNC1(hlock->pin_count, "releasing a pinned lock\n");

	if (hlock->references) {
		hlock->references--;
		if (hlock->references) {
			/*
			 * We had, and after removing one, still have
			 * references, the current lock stack is still
			 * valid. We're done!
			 */
			return 1;
		}
	}

	/*
	 * We have the right lock to unlock, 'hlock' points to it.
	 * Now we remove it from the stack, and add back the other
	 * entries (if any), recalculating the hash along the way:
	 */

	curr->lockdep_depth = i;
	curr->curr_chain_key = hlock->prev_chain_key;

	/*
	 * The most likely case is when the unlock is on the innermost
	 * lock. In this case, we are done!
	 */
	if (i == depth-1)
		return 1;

	if (FUNC5(curr, depth, i + 1, &merged))
		return 0;

	/*
	 * We had N bottles of beer on the wall, we drank one, but now
	 * there's not N-1 bottles of beer left on the wall...
	 * Pouring two of the bottles together is acceptable.
	 */
	FUNC0(curr->lockdep_depth != depth - merged);

	/*
	 * Since reacquire_held_locks() would have called check_chain_key()
	 * indirectly via __lock_acquire(), we don't need to do it again
	 * on return.
	 */
	return 0;
}