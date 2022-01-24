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
struct srcu_struct {int /*<<< orphan*/  dep_map; } ;
struct rcu_synchronize {int /*<<< orphan*/  head; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ RCU_SCHEDULER_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct srcu_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  rcu_bh_lock_map ; 
 int /*<<< orphan*/  rcu_lock_map ; 
 int /*<<< orphan*/  rcu_sched_lock_map ; 
 scalar_t__ rcu_scheduler_active ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeme_after_rcu ; 

__attribute__((used)) static void FUNC10(struct srcu_struct *ssp, bool do_norm)
{
	struct rcu_synchronize rcu;

	FUNC0(FUNC6(&ssp->dep_map) ||
			 FUNC6(&rcu_bh_lock_map) ||
			 FUNC6(&rcu_lock_map) ||
			 FUNC6(&rcu_sched_lock_map),
			 "Illegal synchronize_srcu() in same-type SRCU (or in RCU) read-side critical section");

	if (rcu_scheduler_active == RCU_SCHEDULER_INACTIVE)
		return;
	FUNC7();
	FUNC2(ssp);
	FUNC4(&rcu.completion);
	FUNC5(&rcu.head);
	FUNC1(ssp, &rcu.head, wakeme_after_rcu, do_norm);
	FUNC9(&rcu.completion);
	FUNC3(&rcu.head);

	/*
	 * Make sure that later code is ordered after the SRCU grace
	 * period.  This pairs with the spin_lock_irq_rcu_node()
	 * in srcu_invoke_callbacks().  Unlike Tree RCU, this is needed
	 * because the current CPU might have been totally uninvolved with
	 * (and thus unordered against) that grace period.
	 */
	FUNC8();
}