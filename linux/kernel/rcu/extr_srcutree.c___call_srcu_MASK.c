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
struct srcu_struct {int /*<<< orphan*/  srcu_gp_seq; int /*<<< orphan*/  sda; } ;
struct srcu_data {unsigned long srcu_gp_seq_needed; unsigned long srcu_gp_seq_needed_exp; int /*<<< orphan*/  mynode; int /*<<< orphan*/  srcu_cblist; } ;
struct rcu_head {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  rcu_callback_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct srcu_struct*) ; 
 scalar_t__ FUNC4 (struct rcu_head*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rcu_head*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct srcu_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct srcu_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct srcu_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct srcu_struct*,struct srcu_data*,unsigned long,int) ; 
 int /*<<< orphan*/  srcu_leak_callback ; 
 int FUNC15 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct srcu_struct*,int) ; 
 struct srcu_data* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct srcu_struct *ssp, struct rcu_head *rhp,
			rcu_callback_t func, bool do_norm)
{
	unsigned long flags;
	int idx;
	bool needexp = false;
	bool needgp = false;
	unsigned long s;
	struct srcu_data *sdp;

	FUNC3(ssp);
	if (FUNC4(rhp)) {
		/* Probable double call_srcu(), so leak the callback. */
		FUNC2(rhp->func, srcu_leak_callback);
		FUNC1(1, "call_srcu(): Leaked duplicate callback\n");
		return;
	}
	rhp->func = func;
	idx = FUNC15(ssp);
	FUNC5(flags);
	sdp = FUNC17(ssp->sda);
	FUNC11(sdp);
	FUNC8(&sdp->srcu_cblist, rhp, false);
	FUNC7(&sdp->srcu_cblist,
			      FUNC9(&ssp->srcu_gp_seq));
	s = FUNC10(&ssp->srcu_gp_seq);
	(void)FUNC6(&sdp->srcu_cblist, s);
	if (FUNC0(sdp->srcu_gp_seq_needed, s)) {
		sdp->srcu_gp_seq_needed = s;
		needgp = true;
	}
	if (!do_norm && FUNC0(sdp->srcu_gp_seq_needed_exp, s)) {
		sdp->srcu_gp_seq_needed_exp = s;
		needexp = true;
	}
	FUNC12(sdp, flags);
	if (needgp)
		FUNC14(ssp, sdp, s, do_norm);
	else if (needexp)
		FUNC13(ssp, sdp->mynode, s);
	FUNC16(ssp, idx);
}