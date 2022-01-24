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
struct clock_event_device {int mult; } ;
typedef  enum clock_event_state { ____Placeholder_clock_event_state } clock_event_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct clock_event_device*,int) ; 
 int FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*,int) ; 
 scalar_t__ FUNC4 (struct clock_event_device*) ; 

void FUNC5(struct clock_event_device *dev,
			      enum clock_event_state state)
{
	if (FUNC2(dev) != state) {
		if (FUNC1(dev, state))
			return;

		FUNC3(dev, state);

		/*
		 * A nsec2cyc multiplicator of 0 is invalid and we'd crash
		 * on it, so fix it up and emit a warning:
		 */
		if (FUNC4(dev)) {
			if (FUNC0(!dev->mult))
				dev->mult = 1;
		}
	}
}