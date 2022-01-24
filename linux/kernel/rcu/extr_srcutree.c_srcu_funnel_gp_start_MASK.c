#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct TYPE_4__ {TYPE_1__ work; } ;
struct srcu_struct {unsigned long* srcu_have_cbs; unsigned long srcu_gp_seq; unsigned long srcu_gp_seq_needed_exp; unsigned long srcu_gp_seq_needed; TYPE_2__ work; int /*<<< orphan*/ * srcu_data_have_cbs; struct srcu_struct* srcu_parent; } ;
struct srcu_node {unsigned long* srcu_have_cbs; unsigned long srcu_gp_seq; unsigned long srcu_gp_seq_needed_exp; unsigned long srcu_gp_seq_needed; TYPE_2__ work; int /*<<< orphan*/ * srcu_data_have_cbs; struct srcu_node* srcu_parent; } ;
struct srcu_data {int /*<<< orphan*/  grpmask; struct srcu_struct* mynode; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  SRCU_INTERVAL ; 
 scalar_t__ SRCU_STATE_IDLE ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_gp_wq ; 
 int FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long*,unsigned long) ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct srcu_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct srcu_struct*,unsigned long) ; 
 int /*<<< orphan*/  srcu_boot_list ; 
 int /*<<< orphan*/  FUNC14 (struct srcu_struct*,struct srcu_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct srcu_struct*) ; 
 int /*<<< orphan*/  srcu_init_done ; 
 int /*<<< orphan*/  FUNC17 (struct srcu_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct srcu_struct *ssp, struct srcu_data *sdp,
				 unsigned long s, bool do_norm)
{
	unsigned long flags;
	int idx = FUNC8(s) % FUNC0(sdp->mynode->srcu_have_cbs);
	struct srcu_node *snp = sdp->mynode;
	unsigned long snp_seq;

	/* Each pass through the loop does one level of the srcu_node tree. */
	for (; snp != NULL; snp = snp->srcu_parent) {
		if (FUNC9(&ssp->srcu_gp_seq, s) && snp != sdp->mynode)
			return; /* GP already done and CBs recorded. */
		FUNC12(snp, flags);
		if (FUNC1(snp->srcu_have_cbs[idx], s)) {
			snp_seq = snp->srcu_have_cbs[idx];
			if (snp == sdp->mynode && snp_seq == s)
				snp->srcu_data_have_cbs[idx] |= sdp->grpmask;
			FUNC13(snp, flags);
			if (snp == sdp->mynode && snp_seq != s) {
				FUNC17(sdp, do_norm
							   ? SRCU_INTERVAL
							   : 0);
				return;
			}
			if (!do_norm)
				FUNC14(ssp, snp, s);
			return;
		}
		snp->srcu_have_cbs[idx] = s;
		if (snp == sdp->mynode)
			snp->srcu_data_have_cbs[idx] |= sdp->grpmask;
		if (!do_norm && FUNC2(snp->srcu_gp_seq_needed_exp, s))
			snp->srcu_gp_seq_needed_exp = s;
		FUNC13(snp, flags);
	}

	/* Top of tree, must ensure the grace period will be started. */
	FUNC12(ssp, flags);
	if (FUNC2(ssp->srcu_gp_seq_needed, s)) {
		/*
		 * Record need for grace period s.  Pair with load
		 * acquire setting up for initialization.
		 */
		FUNC11(&ssp->srcu_gp_seq_needed, s); /*^^^*/
	}
	if (!do_norm && FUNC2(ssp->srcu_gp_seq_needed_exp, s))
		ssp->srcu_gp_seq_needed_exp = s;

	/* If grace period not already done and none in progress, start it. */
	if (!FUNC9(&ssp->srcu_gp_seq, s) &&
	    FUNC10(ssp->srcu_gp_seq) == SRCU_STATE_IDLE) {
		FUNC3(FUNC1(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed));
		FUNC16(ssp);
		if (FUNC4(srcu_init_done))
			FUNC7(rcu_gp_wq, &ssp->work,
					   FUNC15(ssp));
		else if (FUNC6(&ssp->work.work.entry))
			FUNC5(&ssp->work.work.entry, &srcu_boot_list);
	}
	FUNC13(ssp, flags);
}