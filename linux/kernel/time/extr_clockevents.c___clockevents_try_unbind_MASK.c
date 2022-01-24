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
struct clock_event_device {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tick_cpu_device ; 

__attribute__((used)) static int FUNC3(struct clock_event_device *ced, int cpu)
{
	/* Fast track. Device is unused */
	if (FUNC0(ced)) {
		FUNC1(&ced->list);
		return 0;
	}

	return ced == FUNC2(tick_cpu_device, cpu).evtdev ? -EAGAIN : -EBUSY;
}