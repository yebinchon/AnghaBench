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
struct rcu_segcblist {scalar_t__* tails; int /*<<< orphan*/ * gp_seq; } ;

/* Variables and functions */
 size_t RCU_DONE_TAIL ; 
 int RCU_NEXT_TAIL ; 
 int RCU_WAIT_TAIL ; 
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_segcblist*) ; 
 scalar_t__ FUNC4 (struct rcu_segcblist*,size_t) ; 

void FUNC5(struct rcu_segcblist *rsclp, unsigned long seq)
{
	int i, j;

	FUNC1(!FUNC3(rsclp));
	if (FUNC4(rsclp, RCU_DONE_TAIL))
		return;

	/*
	 * Find all callbacks whose ->gp_seq numbers indicate that they
	 * are ready to invoke, and put them into the RCU_DONE_TAIL segment.
	 */
	for (i = RCU_WAIT_TAIL; i < RCU_NEXT_TAIL; i++) {
		if (FUNC0(seq, rsclp->gp_seq[i]))
			break;
		FUNC2(rsclp->tails[RCU_DONE_TAIL], rsclp->tails[i]);
	}

	/* If no callbacks moved, nothing more need be done. */
	if (i == RCU_WAIT_TAIL)
		return;

	/* Clean up tail pointers that might have been misordered above. */
	for (j = RCU_WAIT_TAIL; j < i; j++)
		FUNC2(rsclp->tails[j], rsclp->tails[RCU_DONE_TAIL]);

	/*
	 * Callbacks moved, so clean up the misordered ->tails[] pointers
	 * that now point into the middle of the list of ready-to-invoke
	 * callbacks.  The overall effect is to copy down the later pointers
	 * into the gap that was created by the now-ready segments.
	 */
	for (j = RCU_WAIT_TAIL; i < RCU_NEXT_TAIL; i++, j++) {
		if (rsclp->tails[j] == rsclp->tails[RCU_NEXT_TAIL])
			break;  /* No more callbacks. */
		FUNC2(rsclp->tails[j], rsclp->tails[i]);
		rsclp->gp_seq[j] = rsclp->gp_seq[i];
	}
}