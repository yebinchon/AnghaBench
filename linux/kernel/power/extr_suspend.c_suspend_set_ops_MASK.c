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
struct platform_suspend_ops {int dummy; } ;

/* Variables and functions */
 size_t PM_SUSPEND_MEM ; 
 size_t PM_SUSPEND_STANDBY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t mem_sleep_current ; 
 size_t mem_sleep_default ; 
 int /*<<< orphan*/ * mem_sleep_labels ; 
 int /*<<< orphan*/ * mem_sleep_states ; 
 int /*<<< orphan*/ * pm_labels ; 
 int /*<<< orphan*/ * pm_states ; 
 struct platform_suspend_ops const* suspend_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (size_t) ; 

void FUNC3(const struct platform_suspend_ops *ops)
{
	FUNC0();

	suspend_ops = ops;

	if (FUNC2(PM_SUSPEND_STANDBY)) {
		mem_sleep_states[PM_SUSPEND_STANDBY] = mem_sleep_labels[PM_SUSPEND_STANDBY];
		pm_states[PM_SUSPEND_STANDBY] = pm_labels[PM_SUSPEND_STANDBY];
		if (mem_sleep_default == PM_SUSPEND_STANDBY)
			mem_sleep_current = PM_SUSPEND_STANDBY;
	}
	if (FUNC2(PM_SUSPEND_MEM)) {
		mem_sleep_states[PM_SUSPEND_MEM] = mem_sleep_labels[PM_SUSPEND_MEM];
		if (mem_sleep_default >= PM_SUSPEND_MEM)
			mem_sleep_current = PM_SUSPEND_MEM;
	}

	FUNC1();
}