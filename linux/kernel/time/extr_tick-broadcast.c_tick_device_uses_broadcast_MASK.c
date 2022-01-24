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
struct clock_event_device {int features; int /*<<< orphan*/  event_handler; } ;
struct TYPE_2__ {int mode; struct clock_event_device* evtdev; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_C3STOP ; 
 int CLOCK_EVT_FEAT_HRTIMER ; 
#define  TICKDEV_MODE_ONESHOT 129 
#define  TICKDEV_MODE_PERIODIC 128 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  tick_broadcast_mask ; 
 int /*<<< orphan*/  tick_broadcast_on ; 
 int /*<<< orphan*/  FUNC8 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct clock_event_device*) ; 
 int /*<<< orphan*/  tick_handle_periodic ; 

int FUNC12(struct clock_event_device *dev, int cpu)
{
	struct clock_event_device *bc = tick_broadcast_device.evtdev;
	unsigned long flags;
	int ret = 0;

	FUNC5(&tick_broadcast_lock, flags);

	/*
	 * Devices might be registered with both periodic and oneshot
	 * mode disabled. This signals, that the device needs to be
	 * operated from the broadcast device and is a placeholder for
	 * the cpu local device.
	 */
	if (!FUNC10(dev)) {
		dev->event_handler = tick_handle_periodic;
		FUNC11(dev);
		FUNC3(cpu, tick_broadcast_mask);
		if (tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC)
			FUNC9(bc);
		else
			FUNC8(bc);
		ret = 1;
	} else {
		/*
		 * Clear the broadcast bit for this cpu if the
		 * device is not power state affected.
		 */
		if (!(dev->features & CLOCK_EVT_FEAT_C3STOP))
			FUNC1(cpu, tick_broadcast_mask);
		else
			FUNC11(dev);

		/*
		 * Clear the broadcast bit if the CPU is not in
		 * periodic broadcast on state.
		 */
		if (!FUNC4(cpu, tick_broadcast_on))
			FUNC1(cpu, tick_broadcast_mask);

		switch (tick_broadcast_device.mode) {
		case TICKDEV_MODE_ONESHOT:
			/*
			 * If the system is in oneshot mode we can
			 * unconditionally clear the oneshot mask bit,
			 * because the CPU is running and therefore
			 * not in an idle state which causes the power
			 * state affected device to stop. Let the
			 * caller initialize the device.
			 */
			FUNC7(cpu);
			ret = 0;
			break;

		case TICKDEV_MODE_PERIODIC:
			/*
			 * If the system is in periodic mode, check
			 * whether the broadcast device can be
			 * switched off now.
			 */
			if (FUNC2(tick_broadcast_mask) && bc)
				FUNC0(bc);
			/*
			 * If we kept the cpu in the broadcast mask,
			 * tell the caller to leave the per cpu device
			 * in shutdown state. The periodic interrupt
			 * is delivered by the broadcast device, if
			 * the broadcast device exists and is not
			 * hrtimer based.
			 */
			if (bc && !(bc->features & CLOCK_EVT_FEAT_HRTIMER))
				ret = FUNC4(cpu, tick_broadcast_mask);
			break;
		default:
			break;
		}
	}
	FUNC6(&tick_broadcast_lock, flags);
	return ret;
}