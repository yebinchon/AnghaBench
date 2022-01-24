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
typedef  int /*<<< orphan*/  u32 ;
struct clock_event_device {int /*<<< orphan*/  next_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_STATE_PERIODIC ; 
 int FUNC0 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clock_event_device*) ; 
 scalar_t__ FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct clock_event_device *dev, u32 freq)
{
	FUNC3(dev, freq);

	if (FUNC1(dev))
		return FUNC4(dev, dev->next_event, false);

	if (FUNC2(dev))
		return FUNC0(dev, CLOCK_EVT_STATE_PERIODIC);

	return 0;
}