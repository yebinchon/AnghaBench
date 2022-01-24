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
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(enum ctx_state state)
{
	unsigned long flags;

	/*
	 * Some contexts may involve an exception occuring in an irq,
	 * leading to that nesting:
	 * rcu_irq_enter() rcu_user_exit() rcu_user_exit() rcu_irq_exit()
	 * This would mess up the dyntick_nesting count though. And rcu_irq_*()
	 * helpers are enough to protect RCU uses inside the exception. So
	 * just return immediately if we detect we are in an IRQ.
	 */
	if (FUNC1())
		return;

	FUNC3(flags);
	FUNC0(state);
	FUNC2(flags);
}