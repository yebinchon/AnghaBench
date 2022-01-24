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
 scalar_t__ RCU_SCHEDULER_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_normal ; 
 scalar_t__ rcu_scheduler_active ; 

bool FUNC1(void)
{
	return FUNC0(rcu_normal) &&
	       rcu_scheduler_active != RCU_SCHEDULER_INIT;
}