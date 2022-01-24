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
struct rfkill {int state; int /*<<< orphan*/  uevent_work; int /*<<< orphan*/  registered; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RFKILL_BLOCK_HW ; 
 int RFKILL_BLOCK_SW ; 
 int /*<<< orphan*/  FUNC1 (struct rfkill*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC7(struct rfkill *rfkill, bool blocked)
{
	unsigned long flags;
	bool prev, hwblock;

	FUNC0(!rfkill);

	FUNC5(&rfkill->lock, flags);
	prev = !!(rfkill->state & RFKILL_BLOCK_SW);
	FUNC1(rfkill, blocked);
	hwblock = !!(rfkill->state & RFKILL_BLOCK_HW);
	blocked = blocked || hwblock;
	FUNC6(&rfkill->lock, flags);

	if (!rfkill->registered)
		return blocked;

	if (prev != blocked && !hwblock)
		FUNC4(&rfkill->uevent_work);

	FUNC3(rfkill);
	FUNC2();

	return blocked;
}