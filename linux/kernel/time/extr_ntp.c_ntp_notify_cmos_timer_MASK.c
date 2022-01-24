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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_GENERIC_CMOS_UPDATE ; 
 int /*<<< orphan*/  CONFIG_RTC_SYSTOHC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_work ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

void FUNC3(void)
{
	if (!FUNC1())
		return;

	if (FUNC0(CONFIG_GENERIC_CMOS_UPDATE) ||
	    FUNC0(CONFIG_RTC_SYSTOHC))
		FUNC2(system_power_efficient_wq, &sync_work, 0);
}