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
struct tick_device {int /*<<< orphan*/  mode; struct clock_event_device* evtdev; } ;
struct clock_event_device {int features; void (* event_handler ) (struct clock_event_device*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_STATE_ONESHOT ; 
 int EINVAL ; 
 int /*<<< orphan*/  TICKDEV_MODE_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct tick_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int /*<<< orphan*/  FUNC5 (struct clock_event_device*) ; 

int FUNC6(void (*handler)(struct clock_event_device *))
{
	struct tick_device *td = FUNC3(&tick_cpu_device);
	struct clock_event_device *dev = td->evtdev;

	if (!dev || !(dev->features & CLOCK_EVT_FEAT_ONESHOT) ||
		    !FUNC5(dev)) {

		FUNC2("Clockevents: could not switch to one-shot mode:");
		if (!dev) {
			FUNC1(" no tick device\n");
		} else {
			if (!FUNC5(dev))
				FUNC1(" %s is not functional.\n", dev->name);
			else
				FUNC1(" %s does not support one-shot mode.\n",
					dev->name);
		}
		return -EINVAL;
	}

	td->mode = TICKDEV_MODE_ONESHOT;
	dev->event_handler = handler;
	FUNC0(dev, CLOCK_EVT_STATE_ONESHOT);
	FUNC4();
	return 0;
}