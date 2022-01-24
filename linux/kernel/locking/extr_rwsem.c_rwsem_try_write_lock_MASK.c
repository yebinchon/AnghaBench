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
struct rw_semaphore {int /*<<< orphan*/  wait_list; int /*<<< orphan*/  count; int /*<<< orphan*/  wait_lock; } ;
typedef  enum writer_wait_state { ____Placeholder_writer_wait_state } writer_wait_state ;

/* Variables and functions */
 long RWSEM_FLAG_HANDOFF ; 
 long RWSEM_FLAG_WAITERS ; 
 long RWSEM_LOCK_MASK ; 
 long RWSEM_WRITER_LOCKED ; 
 int WRITER_HANDOFF ; 
 int WRITER_NOT_FIRST ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long*,long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rw_semaphore*) ; 

__attribute__((used)) static inline bool FUNC5(struct rw_semaphore *sem,
					enum writer_wait_state wstate)
{
	long count, new;

	FUNC3(&sem->wait_lock);

	count = FUNC0(&sem->count);
	do {
		bool has_handoff = !!(count & RWSEM_FLAG_HANDOFF);

		if (has_handoff && wstate == WRITER_NOT_FIRST)
			return false;

		new = count;

		if (count & RWSEM_LOCK_MASK) {
			if (has_handoff || (wstate != WRITER_HANDOFF))
				return false;

			new |= RWSEM_FLAG_HANDOFF;
		} else {
			new |= RWSEM_WRITER_LOCKED;
			new &= ~RWSEM_FLAG_HANDOFF;

			if (FUNC2(&sem->wait_list))
				new &= ~RWSEM_FLAG_WAITERS;
		}
	} while (!FUNC1(&sem->count, &count, new));

	/*
	 * We have either acquired the lock with handoff bit cleared or
	 * set the handoff bit.
	 */
	if (new & RWSEM_FLAG_HANDOFF)
		return false;

	FUNC4(sem);
	return true;
}