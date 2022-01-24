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
 int HZ ; 
 int RCU_STALL_DELAY_DELTA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu_cpu_stall_timeout ; 

int FUNC2(void)
{
	int till_stall_check = FUNC0(rcu_cpu_stall_timeout);

	/*
	 * Limit check must be consistent with the Kconfig limits
	 * for CONFIG_RCU_CPU_STALL_TIMEOUT.
	 */
	if (till_stall_check < 3) {
		FUNC1(rcu_cpu_stall_timeout, 3);
		till_stall_check = 3;
	} else if (till_stall_check > 300) {
		FUNC1(rcu_cpu_stall_timeout, 300);
		till_stall_check = 300;
	}
	return till_stall_check * HZ + RCU_STALL_DELAY_DELTA;
}