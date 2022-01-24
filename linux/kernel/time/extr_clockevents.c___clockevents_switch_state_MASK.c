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
struct clock_event_device {int features; int (* set_state_shutdown ) (struct clock_event_device*) ;int (* set_state_periodic ) (struct clock_event_device*) ;int (* set_state_oneshot ) (struct clock_event_device*) ;int (* set_state_oneshot_stopped ) (struct clock_event_device*) ;} ;
typedef  enum clock_event_state { ____Placeholder_clock_event_state } clock_event_state ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_DUMMY ; 
 int CLOCK_EVT_FEAT_ONESHOT ; 
 int CLOCK_EVT_FEAT_PERIODIC ; 
#define  CLOCK_EVT_STATE_DETACHED 132 
#define  CLOCK_EVT_STATE_ONESHOT 131 
#define  CLOCK_EVT_STATE_ONESHOT_STOPPED 130 
#define  CLOCK_EVT_STATE_PERIODIC 129 
#define  CLOCK_EVT_STATE_SHUTDOWN 128 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int FUNC3 (struct clock_event_device*) ; 
 int FUNC4 (struct clock_event_device*) ; 
 int FUNC5 (struct clock_event_device*) ; 
 int FUNC6 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC7(struct clock_event_device *dev,
				      enum clock_event_state state)
{
	if (dev->features & CLOCK_EVT_FEAT_DUMMY)
		return 0;

	/* Transition with new state-specific callbacks */
	switch (state) {
	case CLOCK_EVT_STATE_DETACHED:
		/* The clockevent device is getting replaced. Shut it down. */

	case CLOCK_EVT_STATE_SHUTDOWN:
		if (dev->set_state_shutdown)
			return dev->set_state_shutdown(dev);
		return 0;

	case CLOCK_EVT_STATE_PERIODIC:
		/* Core internal bug */
		if (!(dev->features & CLOCK_EVT_FEAT_PERIODIC))
			return -ENOSYS;
		if (dev->set_state_periodic)
			return dev->set_state_periodic(dev);
		return 0;

	case CLOCK_EVT_STATE_ONESHOT:
		/* Core internal bug */
		if (!(dev->features & CLOCK_EVT_FEAT_ONESHOT))
			return -ENOSYS;
		if (dev->set_state_oneshot)
			return dev->set_state_oneshot(dev);
		return 0;

	case CLOCK_EVT_STATE_ONESHOT_STOPPED:
		/* Core internal bug */
		if (FUNC0(!FUNC2(dev),
			      "Current state: %d\n",
			      FUNC1(dev)))
			return -EINVAL;

		if (dev->set_state_oneshot_stopped)
			return dev->set_state_oneshot_stopped(dev);
		else
			return -ENOSYS;

	default:
		return -ENOSYS;
	}
}