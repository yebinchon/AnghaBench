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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_NOFREEZE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  freezer_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

bool FUNC4(void)
{
	FUNC0();

	/*
	 * Modify flags while holding freezer_lock.  This ensures the
	 * freezer notices that we aren't frozen yet or the freezing
	 * condition is visible to try_to_freeze() below.
	 */
	FUNC1(&freezer_lock);
	current->flags &= ~PF_NOFREEZE;
	FUNC2(&freezer_lock);

	return FUNC3();
}