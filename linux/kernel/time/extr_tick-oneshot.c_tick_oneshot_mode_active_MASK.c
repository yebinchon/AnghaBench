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
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ TICKDEV_MODE_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_1__ tick_cpu_device ; 

int FUNC3(void)
{
	unsigned long flags;
	int ret;

	FUNC2(flags);
	ret = FUNC0(tick_cpu_device.mode) == TICKDEV_MODE_ONESHOT;
	FUNC1(flags);

	return ret;
}