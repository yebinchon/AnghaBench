#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {TYPE_1__ power_state; } ;
struct TYPE_7__ {TYPE_2__ power; } ;
struct rfkill {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  data; TYPE_4__* ops; TYPE_3__ dev; } ;
struct TYPE_8__ {int (* set_block ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* query ) (struct rfkill*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int PM_EVENT_SLEEP ; 
 int RFKILL_BLOCK_SW ; 
 int RFKILL_BLOCK_SW_PREV ; 
 int RFKILL_BLOCK_SW_SETCALL ; 
 int /*<<< orphan*/  FUNC0 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct rfkill*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct rfkill *rfkill, bool blocked)
{
	unsigned long flags;
	bool prev, curr;
	int err;

	if (FUNC7(rfkill->dev.power.power_state.event & PM_EVENT_SLEEP))
		return;

	/*
	 * Some platforms (...!) generate input events which affect the
	 * _hard_ kill state -- whenever something tries to change the
	 * current software state query the hardware state too.
	 */
	if (rfkill->ops->query)
		rfkill->ops->query(rfkill, rfkill->data);

	FUNC3(&rfkill->lock, flags);
	prev = rfkill->state & RFKILL_BLOCK_SW;

	if (prev)
		rfkill->state |= RFKILL_BLOCK_SW_PREV;
	else
		rfkill->state &= ~RFKILL_BLOCK_SW_PREV;

	if (blocked)
		rfkill->state |= RFKILL_BLOCK_SW;
	else
		rfkill->state &= ~RFKILL_BLOCK_SW;

	rfkill->state |= RFKILL_BLOCK_SW_SETCALL;
	FUNC4(&rfkill->lock, flags);

	err = rfkill->ops->set_block(rfkill->data, blocked);

	FUNC3(&rfkill->lock, flags);
	if (err) {
		/*
		 * Failed -- reset status to _PREV, which may be different
		 * from what we have set _PREV to earlier in this function
		 * if rfkill_set_sw_state was invoked.
		 */
		if (rfkill->state & RFKILL_BLOCK_SW_PREV)
			rfkill->state |= RFKILL_BLOCK_SW;
		else
			rfkill->state &= ~RFKILL_BLOCK_SW;
	}
	rfkill->state &= ~RFKILL_BLOCK_SW_SETCALL;
	rfkill->state &= ~RFKILL_BLOCK_SW_PREV;
	curr = rfkill->state & RFKILL_BLOCK_SW;
	FUNC4(&rfkill->lock, flags);

	FUNC2(rfkill);
	FUNC1();

	if (prev != curr)
		FUNC0(rfkill);
}