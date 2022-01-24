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
 int /*<<< orphan*/  REG_ENFORCE_GRACE_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_check_chans ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static void FUNC2(void)
{
	/*
	 * Give usermode a chance to do something nicer (move to another
	 * channel, orderly disconnection), before forcing a disconnection.
	 */
	FUNC0(system_power_efficient_wq,
			 &reg_check_chans,
			 FUNC1(REG_ENFORCE_GRACE_MS));
}