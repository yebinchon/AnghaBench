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
struct work_struct {int dummy; } ;
struct o2quo_state {int qs_heartbeating; int qs_connected; int /*<<< orphan*/  qs_lock; int /*<<< orphan*/  qs_hb_bm; int /*<<< orphan*/  qs_conn_bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int O2NM_MAX_NODES ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct o2quo_state o2quo_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	int quorum;
	int lowest_hb, lowest_reachable = 0, fence = 0;
	struct o2quo_state *qs = &o2quo_state;

	FUNC4(&qs->qs_lock);

	lowest_hb = FUNC0(qs->qs_hb_bm, O2NM_MAX_NODES);
	if (lowest_hb != O2NM_MAX_NODES)
		lowest_reachable = FUNC6(lowest_hb, qs->qs_conn_bm);

	FUNC1(0, "heartbeating: %d, connected: %d, "
	     "lowest: %d (%sreachable)\n", qs->qs_heartbeating,
	     qs->qs_connected, lowest_hb, lowest_reachable ? "" : "un");

	if (!FUNC6(FUNC2(), qs->qs_hb_bm) ||
	    qs->qs_heartbeating == 1)
		goto out;

	if (qs->qs_heartbeating & 1) {
		/* the odd numbered cluster case is straight forward --
		 * if we can't talk to the majority we're hosed */
		quorum = (qs->qs_heartbeating + 1)/2;
		if (qs->qs_connected < quorum) {
			FUNC1(ML_ERROR, "fencing this node because it is "
			     "only connected to %u nodes and %u is needed "
			     "to make a quorum out of %u heartbeating nodes\n",
			     qs->qs_connected, quorum,
			     qs->qs_heartbeating);
			fence = 1;
		}
	} else {
		/* the even numbered cluster adds the possibility of each half
		 * of the cluster being able to talk amongst themselves.. in
		 * that case we're hosed if we can't talk to the group that has
		 * the lowest numbered node */
		quorum = qs->qs_heartbeating / 2;
		if (qs->qs_connected < quorum) {
			FUNC1(ML_ERROR, "fencing this node because it is "
			     "only connected to %u nodes and %u is needed "
			     "to make a quorum out of %u heartbeating nodes\n",
			     qs->qs_connected, quorum,
			     qs->qs_heartbeating);
			fence = 1;
		}
		else if ((qs->qs_connected == quorum) &&
			 !lowest_reachable) {
			FUNC1(ML_ERROR, "fencing this node because it is "
			     "connected to a half-quorum of %u out of %u "
			     "nodes which doesn't include the lowest active "
			     "node %u\n", quorum, qs->qs_heartbeating,
			     lowest_hb);
			fence = 1;
		}
	}

out:
	if (fence) {
		FUNC5(&qs->qs_lock);
		FUNC3();
	} else {
		FUNC1(ML_NOTICE, "not fencing this node, heartbeating: %d, "
			"connected: %d, lowest: %d (%sreachable)\n",
			qs->qs_heartbeating, qs->qs_connected, lowest_hb,
			lowest_reachable ? "" : "un");
		FUNC5(&qs->qs_lock);

	}

}