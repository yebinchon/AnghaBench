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
struct TYPE_2__ {int /*<<< orphan*/  lockdep_recursion; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 scalar_t__ debug_locks ; 
 int /*<<< orphan*/  lockdep_lock ; 

__attribute__((used)) static inline int FUNC3(void)
{
	if (debug_locks && !FUNC1(&lockdep_lock)) {
		/*
		 * The lockdep graph lock isn't locked while we expect it to
		 * be, we're confused now, bye!
		 */
		return FUNC0(1);
	}

	current->lockdep_recursion--;
	FUNC2(&lockdep_lock);
	return 0;
}