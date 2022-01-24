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
struct rfkill {int state; int /*<<< orphan*/  uevent_work; scalar_t__ registered; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RFKILL_BLOCK_ANY ; 
 int RFKILL_BLOCK_HW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC6(struct rfkill *rfkill, bool blocked)
{
	unsigned long flags;
	bool ret, prev;

	FUNC0(!rfkill);

	FUNC4(&rfkill->lock, flags);
	prev = !!(rfkill->state & RFKILL_BLOCK_HW);
	if (blocked)
		rfkill->state |= RFKILL_BLOCK_HW;
	else
		rfkill->state &= ~RFKILL_BLOCK_HW;
	ret = !!(rfkill->state & RFKILL_BLOCK_ANY);
	FUNC5(&rfkill->lock, flags);

	FUNC2(rfkill);
	FUNC1();

	if (rfkill->registered && prev != blocked)
		FUNC3(&rfkill->uevent_work);

	return ret;
}