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
struct lockdep_map {void* key; } ;
struct lock_class_key {int dummy; } ;
typedef  int /*<<< orphan*/  raw_spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct lockdep_map*) ; 

__attribute__((used)) static bool FUNC7(struct lockdep_map *lock)
{
	unsigned long can_addr, addr = (unsigned long)lock;

#ifdef __KERNEL__
	/*
	 * lockdep_free_key_range() assumes that struct lock_class_key
	 * objects do not overlap. Since we use the address of lock
	 * objects as class key for static objects, check whether the
	 * size of lock_class_key objects does not exceed the size of
	 * the smallest lock object.
	 */
	BUILD_BUG_ON(sizeof(struct lock_class_key) > sizeof(raw_spinlock_t));
#endif

	if (FUNC1(addr, &can_addr))
		lock->key = (void *)can_addr;
	else if (FUNC2(addr, &can_addr))
		lock->key = (void *)can_addr;
	else if (FUNC6(lock))
		lock->key = (void *)lock;
	else {
		/* Debug-check: all keys must be persistent! */
		FUNC3();
		FUNC5("INFO: trying to register non-static key.\n");
		FUNC5("the code is fine but needs lockdep annotation.\n");
		FUNC5("turning off the locking correctness validator.\n");
		FUNC4();
		return false;
	}

	return true;
}