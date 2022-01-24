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
struct pending_free {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pending_free*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pending_free*) ; 
 TYPE_1__* current ; 
 struct pending_free* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lockdep_lock ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void *start, unsigned long size)
{
	struct pending_free *pf;
	unsigned long flags;

	FUNC5();

	FUNC7(flags);
	FUNC1(&lockdep_lock);
	current->lockdep_recursion = 1;
	pf = FUNC4();
	FUNC0(pf, start, size);
	FUNC3(pf);
	current->lockdep_recursion = 0;
	FUNC2(&lockdep_lock);
	FUNC6(flags);

	/*
	 * Wait for any possible iterators from look_up_lock_class() to pass
	 * before continuing to free the memory they refer to.
	 */
	FUNC8();
}