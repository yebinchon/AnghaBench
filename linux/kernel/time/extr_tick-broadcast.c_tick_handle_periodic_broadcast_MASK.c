#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tick_device {TYPE_2__* evtdev; } ;
struct clock_event_device {int /*<<< orphan*/  next_event; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* event_handler ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct tick_device* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tick_broadcast_device ; 
 int /*<<< orphan*/  tick_broadcast_lock ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  tick_period ; 

__attribute__((used)) static void FUNC9(struct clock_event_device *dev)
{
	struct tick_device *td = FUNC7(&tick_cpu_device);
	bool bc_local;

	FUNC4(&tick_broadcast_lock);

	/* Handle spurious interrupts gracefully */
	if (FUNC1(tick_broadcast_device.evtdev)) {
		FUNC5(&tick_broadcast_lock);
		return;
	}

	bc_local = FUNC8();

	if (FUNC0(dev)) {
		ktime_t next = FUNC3(dev->next_event, tick_period);

		FUNC2(dev, next, true);
	}
	FUNC5(&tick_broadcast_lock);

	/*
	 * We run the handler of the local cpu after dropping
	 * tick_broadcast_lock because the handler might deadlock when
	 * trying to switch to oneshot mode.
	 */
	if (bc_local)
		td->evtdev->event_handler(td->evtdev);
}