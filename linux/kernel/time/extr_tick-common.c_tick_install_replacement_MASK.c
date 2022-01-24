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
struct tick_device {int /*<<< orphan*/  evtdev; } ;
struct clock_event_device {int features; } ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 struct tick_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tick_device*,struct clock_event_device*,int,int /*<<< orphan*/ ) ; 

void FUNC6(struct clock_event_device *newdev)
{
	struct tick_device *td = FUNC3(&tick_cpu_device);
	int cpu = FUNC2();

	FUNC0(td->evtdev, newdev);
	FUNC5(td, newdev, cpu, FUNC1(cpu));
	if (newdev->features & CLOCK_EVT_FEAT_ONESHOT)
		FUNC4();
}