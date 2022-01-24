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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bctimer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct clock_event_device *evt)
{
	/*
	 * Note, we cannot cancel the timer here as we might
	 * run into the following live lock scenario:
	 *
	 * cpu 0		cpu1
	 * lock(broadcast_lock);
	 *			hrtimer_interrupt()
	 *			bc_handler()
	 *			   tick_handle_oneshot_broadcast();
	 *			    lock(broadcast_lock);
	 * hrtimer_cancel()
	 *  wait_for_callback()
	 */
	FUNC0(&bctimer);
	return 0;
}