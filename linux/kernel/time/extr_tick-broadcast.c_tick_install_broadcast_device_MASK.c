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
struct clock_event_device {int features; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  owner; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,struct clock_event_device*) ; 
 int /*<<< orphan*/  clockevents_handle_noop ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_mask ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*,struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct clock_event_device *dev)
{
	struct clock_event_device *cur = tick_broadcast_device.evtdev;

	if (!FUNC3(cur, dev))
		return;

	if (!FUNC5(dev->owner))
		return;

	FUNC0(cur, dev);
	if (cur)
		cur->event_handler = clockevents_handle_noop;
	tick_broadcast_device.evtdev = dev;
	if (!FUNC1(tick_broadcast_mask))
		FUNC2(dev);
	/*
	 * Inform all cpus about this. We might be in a situation
	 * where we did not switch to oneshot mode because the per cpu
	 * devices are affected by CLOCK_EVT_FEAT_C3STOP and the lack
	 * of a oneshot capable broadcast device. Without that
	 * notification the systems stays stuck in periodic mode
	 * forever.
	 */
	if (dev->features & CLOCK_EVT_FEAT_ONESHOT)
		FUNC4();
}