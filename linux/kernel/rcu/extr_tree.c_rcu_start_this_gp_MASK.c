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
struct rcu_node {unsigned long gp_seq_needed; struct rcu_node* parent; int /*<<< orphan*/  gp_seq; } ;
struct rcu_data {unsigned long gp_seq_needed; } ;
struct TYPE_2__ {int gp_flags; int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  name; int /*<<< orphan*/  gp_kthread; int /*<<< orphan*/  gp_req_activity; } ;

/* Variables and functions */
 int RCU_GP_FLAG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct rcu_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcu_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcu_node*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rcu_node*,struct rcu_data*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(struct rcu_node *rnp_start, struct rcu_data *rdp,
			      unsigned long gp_seq_req)
{
	bool ret = false;
	struct rcu_node *rnp;

	/*
	 * Use funnel locking to either acquire the root rcu_node
	 * structure's lock or bail out if the need for this grace period
	 * has already been recorded -- or if that grace period has in
	 * fact already started.  If there is already a grace period in
	 * progress in a non-leaf node, no recording is needed because the
	 * end of the grace period will scan the leaf rcu_node structures.
	 * Note that rnp_start->lock must not be released.
	 */
	FUNC5(rnp_start);
	FUNC13(rnp_start, rdp, gp_seq_req, FUNC1("Startleaf"));
	for (rnp = rnp_start; 1; rnp = rnp->parent) {
		if (rnp != rnp_start)
			FUNC6(rnp);
		if (FUNC2(rnp->gp_seq_needed, gp_seq_req) ||
		    FUNC10(&rnp->gp_seq, gp_seq_req) ||
		    (rnp != rnp_start &&
		     FUNC11(FUNC9(&rnp->gp_seq)))) {
			FUNC13(rnp, rdp, gp_seq_req,
					  FUNC1("Prestarted"));
			goto unlock_out;
		}
		rnp->gp_seq_needed = gp_seq_req;
		if (FUNC11(FUNC9(&rnp->gp_seq))) {
			/*
			 * We just marked the leaf or internal node, and a
			 * grace period is in progress, which means that
			 * rcu_gp_cleanup() will see the marking.  Bail to
			 * reduce contention.
			 */
			FUNC13(rnp_start, rdp, gp_seq_req,
					  FUNC1("Startedleaf"));
			goto unlock_out;
		}
		if (rnp != rnp_start && rnp->parent != NULL)
			FUNC7(rnp);
		if (!rnp->parent)
			break;  /* At root, and perhaps also leaf. */
	}

	/* If GP already in progress, just leave, otherwise start one. */
	if (FUNC8()) {
		FUNC13(rnp, rdp, gp_seq_req, FUNC1("Startedleafroot"));
		goto unlock_out;
	}
	FUNC13(rnp, rdp, gp_seq_req, FUNC1("Startedroot"));
	FUNC4(rcu_state.gp_flags, rcu_state.gp_flags | RCU_GP_FLAG_INIT);
	rcu_state.gp_req_activity = jiffies;
	if (!rcu_state.gp_kthread) {
		FUNC13(rnp, rdp, gp_seq_req, FUNC1("NoGPkthread"));
		goto unlock_out;
	}
	FUNC12(rcu_state.name, FUNC0(rcu_state.gp_seq), FUNC1("newreq"));
	ret = true;  /* Caller must wake GP kthread. */
unlock_out:
	/* Push furthest requested GP to leaf node and rcu_data structure. */
	if (FUNC3(gp_seq_req, rnp->gp_seq_needed)) {
		rnp_start->gp_seq_needed = rnp->gp_seq_needed;
		rdp->gp_seq_needed = rnp->gp_seq_needed;
	}
	if (rnp != rnp_start)
		FUNC7(rnp);
	return ret;
}