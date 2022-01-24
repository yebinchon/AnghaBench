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
struct srcu_struct {scalar_t__ srcu_last_gp_end; int /*<<< orphan*/  srcu_gp_seq; int /*<<< orphan*/  srcu_gp_seq_needed; int /*<<< orphan*/  sda; } ;
struct srcu_data {int /*<<< orphan*/  srcu_cblist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ exp_holdoff ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct srcu_data* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned long,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(struct srcu_struct *ssp)
{
	unsigned long curseq;
	unsigned long flags;
	struct srcu_data *sdp;
	unsigned long t;

	/* If the local srcu_data structure has callbacks, not idle.  */
	FUNC4(flags);
	sdp = FUNC8(ssp->sda);
	if (FUNC5(&sdp->srcu_cblist)) {
		FUNC3(flags);
		return false; /* Callbacks already present, so not idle. */
	}
	FUNC3(flags);

	/*
	 * No local callbacks, so probabalistically probe global state.
	 * Exact information would require acquiring locks, which would
	 * kill scalability, hence the probabalistic nature of the probe.
	 */

	/* First, see if enough time has passed since the last GP. */
	t = FUNC2();
	if (exp_holdoff == 0 ||
	    FUNC9(t, ssp->srcu_last_gp_end,
			       ssp->srcu_last_gp_end + exp_holdoff))
		return false; /* Too soon after last GP. */

	/* Next, check for probable idleness. */
	curseq = FUNC6(&ssp->srcu_gp_seq);
	FUNC7(); /* Order ->srcu_gp_seq with ->srcu_gp_seq_needed. */
	if (FUNC1(curseq, FUNC0(ssp->srcu_gp_seq_needed)))
		return false; /* Grace period in progress, so not idle. */
	FUNC7(); /* Order ->srcu_gp_seq with prior access. */
	if (curseq != FUNC6(&ssp->srcu_gp_seq))
		return false; /* GP # changed, so not idle. */
	return true; /* With reasonable probability, idle! */
}