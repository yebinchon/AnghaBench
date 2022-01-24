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
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int mode; struct clock_event_device* evtdev; } ;

/* Variables and functions */
#define  TICKDEV_MODE_ONESHOT 129 
#define  TICKDEV_MODE_PERIODIC 128 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  tick_broadcast_mask ; 
 int /*<<< orphan*/  FUNC4 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct clock_event_device*) ; 

void FUNC6(void)
{
	struct clock_event_device *bc;
	unsigned long flags;

	FUNC2(&tick_broadcast_lock, flags);

	bc = tick_broadcast_device.evtdev;

	if (bc) {
		FUNC0(bc);

		switch (tick_broadcast_device.mode) {
		case TICKDEV_MODE_PERIODIC:
			if (!FUNC1(tick_broadcast_mask))
				FUNC4(bc);
			break;
		case TICKDEV_MODE_ONESHOT:
			if (!FUNC1(tick_broadcast_mask))
				FUNC5(bc);
			break;
		}
	}
	FUNC3(&tick_broadcast_lock, flags);
}