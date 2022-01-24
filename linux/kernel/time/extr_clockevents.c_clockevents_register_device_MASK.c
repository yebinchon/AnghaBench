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
struct clock_event_device {scalar_t__ cpumask; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_STATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  clockevent_devices ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clockevents_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ cpu_all_mask ; 
 scalar_t__ cpu_possible_mask ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct clock_event_device*) ; 

void FUNC11(struct clock_event_device *dev)
{
	unsigned long flags;

	/* Initialize state to DETACHED */
	FUNC2(dev, CLOCK_EVT_STATE_DETACHED);

	if (!dev->cpumask) {
		FUNC1(FUNC6() > 1);
		dev->cpumask = FUNC4(FUNC9());
	}

	if (dev->cpumask == cpu_all_mask) {
		FUNC0(1, "%s cpumask == cpu_all_mask, using cpu_possible_mask instead\n",
		     dev->name);
		dev->cpumask = cpu_possible_mask;
	}

	FUNC7(&clockevents_lock, flags);

	FUNC5(&dev->list, &clockevent_devices);
	FUNC10(dev);
	FUNC3();

	FUNC8(&clockevents_lock, flags);
}