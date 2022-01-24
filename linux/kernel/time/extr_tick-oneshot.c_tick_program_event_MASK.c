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
struct clock_event_device {scalar_t__ next_event; } ;
typedef  scalar_t__ ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_STATE_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_STATE_ONESHOT_STOPPED ; 
 scalar_t__ KTIME_MAX ; 
 struct clock_event_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clock_event_device*) ; 
 int FUNC2 (struct clock_event_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__ tick_cpu_device ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(ktime_t expires, int force)
{
	struct clock_event_device *dev = FUNC0(tick_cpu_device.evtdev);

	if (FUNC4(expires == KTIME_MAX)) {
		/*
		 * We don't need the clock event device any more, stop it.
		 */
		FUNC3(dev, CLOCK_EVT_STATE_ONESHOT_STOPPED);
		dev->next_event = KTIME_MAX;
		return 0;
	}

	if (FUNC4(FUNC1(dev))) {
		/*
		 * We need the clock event again, configure it in ONESHOT mode
		 * before using it.
		 */
		FUNC3(dev, CLOCK_EVT_STATE_ONESHOT);
	}

	return FUNC2(dev, expires, force);
}