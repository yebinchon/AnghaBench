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
struct tick_device {struct clock_event_device* evtdev; } ;
struct clock_event_device {int features; } ;
typedef  enum tick_broadcast_mode { ____Placeholder_tick_broadcast_mode } tick_broadcast_mode ;
struct TYPE_2__ {scalar_t__ mode; struct clock_event_device* evtdev; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_C3STOP ; 
 int CLOCK_EVT_FEAT_HRTIMER ; 
 scalar_t__ TICKDEV_MODE_PERIODIC ; 
#define  TICK_BROADCAST_FORCE 130 
#define  TICK_BROADCAST_OFF 129 
#define  TICK_BROADCAST_ON 128 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 () ; 
 struct tick_device* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tick_broadcast_device ; 
 int tick_broadcast_forced ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  tick_broadcast_mask ; 
 int /*<<< orphan*/  tick_broadcast_on ; 
 int /*<<< orphan*/  FUNC10 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct clock_event_device*) ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int /*<<< orphan*/  FUNC12 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct clock_event_device*,int /*<<< orphan*/ ) ; 

void FUNC14(enum tick_broadcast_mode mode)
{
	struct clock_event_device *bc, *dev;
	struct tick_device *td;
	int cpu, bc_stopped;
	unsigned long flags;

	/* Protects also the local clockevent device. */
	FUNC6(&tick_broadcast_lock, flags);
	td = FUNC9(&tick_cpu_device);
	dev = td->evtdev;

	/*
	 * Is the device not affected by the powerstate ?
	 */
	if (!dev || !(dev->features & CLOCK_EVT_FEAT_C3STOP))
		goto out;

	if (!FUNC12(dev))
		goto out;

	cpu = FUNC8();
	bc = tick_broadcast_device.evtdev;
	bc_stopped = FUNC2(tick_broadcast_mask);

	switch (mode) {
	case TICK_BROADCAST_FORCE:
		tick_broadcast_forced = 1;
		/* fall through */
	case TICK_BROADCAST_ON:
		FUNC3(cpu, tick_broadcast_on);
		if (!FUNC5(cpu, tick_broadcast_mask)) {
			/*
			 * Only shutdown the cpu local device, if:
			 *
			 * - the broadcast device exists
			 * - the broadcast device is not a hrtimer based one
			 * - the broadcast device is in periodic mode to
			 *   avoid a hickup during switch to oneshot mode
			 */
			if (bc && !(bc->features & CLOCK_EVT_FEAT_HRTIMER) &&
			    tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC)
				FUNC0(dev);
		}
		break;

	case TICK_BROADCAST_OFF:
		if (tick_broadcast_forced)
			break;
		FUNC1(cpu, tick_broadcast_on);
		if (FUNC4(cpu, tick_broadcast_mask)) {
			if (tick_broadcast_device.mode ==
			    TICKDEV_MODE_PERIODIC)
				FUNC13(dev, 0);
		}
		break;
	}

	if (bc) {
		if (FUNC2(tick_broadcast_mask)) {
			if (!bc_stopped)
				FUNC0(bc);
		} else if (bc_stopped) {
			if (tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC)
				FUNC11(bc);
			else
				FUNC10(bc);
		}
	}
out:
	FUNC7(&tick_broadcast_lock, flags);
}