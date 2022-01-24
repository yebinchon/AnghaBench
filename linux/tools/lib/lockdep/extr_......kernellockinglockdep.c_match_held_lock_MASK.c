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
struct lockdep_map {struct lock_class** class_cache; } ;
struct lock_class {int dummy; } ;
struct held_lock {int class_idx; int /*<<< orphan*/  nest_lock; scalar_t__ references; struct lockdep_map const* instance; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct lock_class const* lock_classes ; 
 struct lock_class* FUNC1 (struct lockdep_map const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct held_lock *hlock,
					const struct lockdep_map *lock)
{
	if (hlock->instance == lock)
		return 1;

	if (hlock->references) {
		const struct lock_class *class = lock->class_cache[0];

		if (!class)
			class = FUNC1(lock, 0);

		/*
		 * If look_up_lock_class() failed to find a class, we're trying
		 * to test if we hold a lock that has never yet been acquired.
		 * Clearly if the lock hasn't been acquired _ever_, we're not
		 * holding it either, so report failure.
		 */
		if (!class)
			return 0;

		/*
		 * References, but not a lock we're actually ref-counting?
		 * State got messed up, follow the sites that change ->references
		 * and try to make sense of it.
		 */
		if (FUNC0(!hlock->nest_lock))
			return 0;

		if (hlock->class_idx == class - lock_classes)
			return 1;
	}

	return 0;
}