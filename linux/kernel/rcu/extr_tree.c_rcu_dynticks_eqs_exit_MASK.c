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
struct rcu_data {int /*<<< orphan*/  dynticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCU_EQS_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RCU_DYNTICK_CTRL_CTR ; 
 int RCU_DYNTICK_CTRL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct rcu_data* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct rcu_data *rdp = FUNC6(&rcu_data);
	int seq;

	/*
	 * CPUs seeing atomic_add_return() must see prior idle sojourns,
	 * and we also must force ordering with the next RCU read-side
	 * critical section.
	 */
	seq = FUNC2(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
	FUNC1(FUNC0(CONFIG_RCU_EQS_DEBUG) &&
		     !(seq & RCU_DYNTICK_CTRL_CTR));
	if (seq & RCU_DYNTICK_CTRL_MASK) {
		FUNC3(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
		FUNC5(); /* _exit after clearing mask. */
		/* Prefer duplicate flushes to losing a flush. */
		FUNC4();
	}
}