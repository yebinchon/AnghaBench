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
typedef  enum system_states { ____Placeholder_system_states } system_states ;

/* Variables and functions */
 int SYSTEM_HALT ; 
 int /*<<< orphan*/  SYS_HALT ; 
 int /*<<< orphan*/  SYS_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  reboot_notifier_list ; 
 int system_state ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(enum system_states state)
{
	FUNC0(&reboot_notifier_list,
		(state == SYSTEM_HALT) ? SYS_HALT : SYS_POWER_OFF, NULL);
	system_state = state;
	FUNC2();
	FUNC1();
}