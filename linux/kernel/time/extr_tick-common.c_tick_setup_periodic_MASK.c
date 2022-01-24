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
struct clock_event_device {int features; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_PERIODIC ; 
 int /*<<< orphan*/  CLOCK_EVT_STATE_ONESHOT ; 
 int /*<<< orphan*/  CLOCK_EVT_STATE_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct clock_event_device*) ; 
 int /*<<< orphan*/  tick_next_period ; 
 int /*<<< orphan*/  tick_period ; 
 int /*<<< orphan*/  FUNC7 (struct clock_event_device*,int) ; 

void FUNC8(struct clock_event_device *dev, int broadcast)
{
	FUNC7(dev, broadcast);

	/* Broadcast setup ? */
	if (!FUNC6(dev))
		return;

	if ((dev->features & CLOCK_EVT_FEAT_PERIODIC) &&
	    !FUNC5()) {
		FUNC1(dev, CLOCK_EVT_STATE_PERIODIC);
	} else {
		unsigned int seq;
		ktime_t next;

		do {
			seq = FUNC3(&jiffies_lock);
			next = tick_next_period;
		} while (FUNC4(&jiffies_lock, seq));

		FUNC1(dev, CLOCK_EVT_STATE_ONESHOT);

		for (;;) {
			if (!FUNC0(dev, next, false))
				return;
			next = FUNC2(next, tick_period);
		}
	}
}