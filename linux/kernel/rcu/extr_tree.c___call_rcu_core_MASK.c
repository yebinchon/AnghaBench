#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcu_head {int dummy; } ;
struct rcu_data {scalar_t__ qlen_last_fqs_check; scalar_t__ n_force_qs_snap; int /*<<< orphan*/  cblist; int /*<<< orphan*/  blimit; int /*<<< orphan*/  mynode; } ;
struct TYPE_2__ {scalar_t__ n_force_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MAX_RCU_BLIMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_data*) ; 
 scalar_t__ qhimark ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct rcu_head* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct rcu_data *rdp, struct rcu_head *head,
			    unsigned long flags)
{
	/*
	 * If called from an extended quiescent state, invoke the RCU
	 * core in order to force a re-evaluation of RCU's idleness.
	 */
	if (!FUNC7())
		FUNC1();

	/* If interrupts were disabled or CPU offline, don't invoke RCU core. */
	if (FUNC2(flags) || FUNC0(FUNC10()))
		return;

	/*
	 * Force the grace period if too many callbacks or too long waiting.
	 * Enforce hysteresis, and don't invoke rcu_force_quiescent_state()
	 * if some other CPU has recently done so.  Also, don't bother
	 * invoking rcu_force_quiescent_state() if the newly enqueued callback
	 * is the only one waiting for a grace period to complete.
	 */
	if (FUNC11(FUNC9(&rdp->cblist) >
		     rdp->qlen_last_fqs_check + qhimark)) {

		/* Are we ignoring a completed grace period? */
		FUNC3(rdp);

		/* Start a new grace period if one not already started. */
		if (!FUNC6()) {
			FUNC4(rdp->mynode, rdp);
		} else {
			/* Give the grace period a kick. */
			rdp->blimit = DEFAULT_MAX_RCU_BLIMIT;
			if (rcu_state.n_force_qs == rdp->n_force_qs_snap &&
			    FUNC8(&rdp->cblist) != head)
				FUNC5();
			rdp->n_force_qs_snap = rcu_state.n_force_qs;
			rdp->qlen_last_fqs_check = FUNC9(&rdp->cblist);
		}
	}
}