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
struct rcu_node {int /*<<< orphan*/  qsmask; } ;
struct rcu_data {unsigned long grpmask; struct rcu_node* mynode; } ;
struct TYPE_2__ {int /*<<< orphan*/  jiffies_stall; int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  gp_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_ALL ; 
 unsigned long RCU_STALL_RAT_DELAY ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ rcu_cpu_stall_ftrace_dump ; 
 scalar_t__ rcu_cpu_stall_suppress ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  rcu_kick_kthreads ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct rcu_data *rdp)
{
	unsigned long gs1;
	unsigned long gs2;
	unsigned long gps;
	unsigned long j;
	unsigned long jn;
	unsigned long js;
	struct rcu_node *rnp;

	if ((rcu_cpu_stall_suppress && !rcu_kick_kthreads) ||
	    !FUNC7())
		return;
	FUNC9();
	j = jiffies;

	/*
	 * Lots of memory barriers to reject false positives.
	 *
	 * The idea is to pick up rcu_state.gp_seq, then
	 * rcu_state.jiffies_stall, then rcu_state.gp_start, and finally
	 * another copy of rcu_state.gp_seq.  These values are updated in
	 * the opposite order with memory barriers (or equivalent) during
	 * grace-period initialization and cleanup.  Now, a false positive
	 * can occur if we get an new value of rcu_state.gp_start and a old
	 * value of rcu_state.jiffies_stall.  But given the memory barriers,
	 * the only way that this can happen is if one grace period ends
	 * and another starts between these two fetches.  This is detected
	 * by comparing the second fetch of rcu_state.gp_seq with the
	 * previous fetch from rcu_state.gp_seq.
	 *
	 * Given this check, comparisons of jiffies, rcu_state.jiffies_stall,
	 * and rcu_state.gp_start suffice to forestall false positives.
	 */
	gs1 = FUNC0(rcu_state.gp_seq);
	FUNC10(); /* Pick up ->gp_seq first... */
	js = FUNC0(rcu_state.jiffies_stall);
	FUNC10(); /* ...then ->jiffies_stall before the rest... */
	gps = FUNC0(rcu_state.gp_start);
	FUNC10(); /* ...and finally ->gp_start before ->gp_seq again. */
	gs2 = FUNC0(rcu_state.gp_seq);
	if (gs1 != gs2 ||
	    FUNC2(j, js) ||
	    FUNC1(gps, js))
		return; /* No stall or GP completed since entering function. */
	rnp = rdp->mynode;
	jn = jiffies + 3 * FUNC8() + 3;
	if (FUNC7() &&
	    (FUNC0(rnp->qsmask) & rdp->grpmask) &&
	    FUNC3(&rcu_state.jiffies_stall, js, jn) == js) {

		/* We haven't checked in, so go dump stack. */
		FUNC4();
		if (rcu_cpu_stall_ftrace_dump)
			FUNC6(DUMP_ALL);

	} else if (FUNC7() &&
		   FUNC1(j, js + RCU_STALL_RAT_DELAY) &&
		   FUNC3(&rcu_state.jiffies_stall, js, jn) == js) {

		/* They had a few time units to dump stack, so complain. */
		FUNC5(gs2);
		if (rcu_cpu_stall_ftrace_dump)
			FUNC6(DUMP_ALL);
	}
}