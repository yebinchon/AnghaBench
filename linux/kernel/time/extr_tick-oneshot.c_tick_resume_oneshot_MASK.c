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
struct TYPE_2__ {int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_STATE_ONESHOT ; 
 struct clock_event_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ tick_cpu_device ; 

void FUNC4(void)
{
	struct clock_event_device *dev = FUNC0(tick_cpu_device.evtdev);

	FUNC2(dev, CLOCK_EVT_STATE_ONESHOT);
	FUNC1(dev, FUNC3(), true);
}