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
struct mutex {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long MUTEX_FLAGS ; 
 unsigned long MUTEX_FLAG_HANDOFF ; 
 unsigned long MUTEX_FLAG_PICKUP ; 
 unsigned long FUNC1 (unsigned long) ; 
 struct task_struct* FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline struct task_struct *FUNC6(struct mutex *lock)
{
	unsigned long owner, curr = (unsigned long)current;

	owner = FUNC4(&lock->owner);
	for (;;) { /* must loop, can race against a flag */
		unsigned long old, flags = FUNC1(owner);
		unsigned long task = owner & ~MUTEX_FLAGS;

		if (task) {
			if (FUNC5(task != curr))
				break;

			if (FUNC5(!(flags & MUTEX_FLAG_PICKUP)))
				break;

			flags &= ~MUTEX_FLAG_PICKUP;
		} else {
#ifdef CONFIG_DEBUG_MUTEXES
			DEBUG_LOCKS_WARN_ON(flags & MUTEX_FLAG_PICKUP);
#endif
		}

		/*
		 * We set the HANDOFF bit, we must make sure it doesn't live
		 * past the point where we acquire it. This would be possible
		 * if we (accidentally) set the bit on an unlocked mutex.
		 */
		flags &= ~MUTEX_FLAG_HANDOFF;

		old = FUNC3(&lock->owner, owner, curr | flags);
		if (old == owner)
			return NULL;

		owner = old;
	}

	return FUNC2(owner);
}