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
 scalar_t__ PM_SUSPEND_ON ; 
 scalar_t__ autosleep_state ; 
 int /*<<< orphan*/  autosleep_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  suspend_work ; 

void FUNC1(void)
{
	if (autosleep_state > PM_SUSPEND_ON)
		FUNC0(autosleep_wq, &suspend_work);
}