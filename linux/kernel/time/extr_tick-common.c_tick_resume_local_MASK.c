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
struct tick_device {scalar_t__ mode; int /*<<< orphan*/  evtdev; } ;

/* Variables and functions */
 scalar_t__ TICKDEV_MODE_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tick_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_cpu_device ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	struct tick_device *td = FUNC1(&tick_cpu_device);
	bool broadcast = FUNC2();

	FUNC0(td->evtdev);
	if (!broadcast) {
		if (td->mode == TICKDEV_MODE_PERIODIC)
			FUNC4(td->evtdev, 0);
		else
			FUNC3();
	}
}