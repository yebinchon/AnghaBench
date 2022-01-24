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
 int /*<<< orphan*/  rcu_data ; 
 struct rcu_data* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct rcu_data *rdp = FUNC3(&rcu_data);
	int seq;

	/*
	 * CPUs seeing atomic_add_return() must see prior RCU read-side
	 * critical sections, and we also must force ordering with the
	 * next idle sojourn.
	 */
	seq = FUNC2(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
	/* Better be in an extended quiescent state! */
	FUNC1(FUNC0(CONFIG_RCU_EQS_DEBUG) &&
		     (seq & RCU_DYNTICK_CTRL_CTR));
	/* Better not have special action (TLB flush) pending! */
	FUNC1(FUNC0(CONFIG_RCU_EQS_DEBUG) &&
		     (seq & RCU_DYNTICK_CTRL_MASK));
}