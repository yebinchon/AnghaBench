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
struct srcu_struct {int srcu_idx; int /*<<< orphan*/  srcu_gp_mutex; int /*<<< orphan*/  srcu_gp_seq; int /*<<< orphan*/  srcu_gp_seq_needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SRCU_STATE_IDLE ; 
 int SRCU_STATE_SCAN1 ; 
 int SRCU_STATE_SCAN2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct srcu_struct*,int,int) ; 

__attribute__((used)) static void FUNC14(struct srcu_struct *ssp)
{
	int idx;

	FUNC3(&ssp->srcu_gp_mutex);

	/*
	 * Because readers might be delayed for an extended period after
	 * fetching ->srcu_idx for their index, at any point in time there
	 * might well be readers using both idx=0 and idx=1.  We therefore
	 * need to wait for readers to clear from both index values before
	 * invoking a callback.
	 *
	 * The load-acquire ensures that we see the accesses performed
	 * by the prior grace period.
	 */
	idx = FUNC6(FUNC7(&ssp->srcu_gp_seq)); /* ^^^ */
	if (idx == SRCU_STATE_IDLE) {
		FUNC8(ssp);
		if (FUNC1(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed)) {
			FUNC2(FUNC6(ssp->srcu_gp_seq));
			FUNC9(ssp);
			FUNC4(&ssp->srcu_gp_mutex);
			return;
		}
		idx = FUNC6(FUNC0(ssp->srcu_gp_seq));
		if (idx == SRCU_STATE_IDLE)
			FUNC12(ssp);
		FUNC9(ssp);
		if (idx != SRCU_STATE_IDLE) {
			FUNC4(&ssp->srcu_gp_mutex);
			return; /* Someone else started the grace period. */
		}
	}

	if (FUNC6(FUNC0(ssp->srcu_gp_seq)) == SRCU_STATE_SCAN1) {
		idx = 1 ^ (ssp->srcu_idx & 1);
		if (!FUNC13(ssp, idx, 1)) {
			FUNC4(&ssp->srcu_gp_mutex);
			return; /* readers present, retry later. */
		}
		FUNC10(ssp);
		FUNC5(&ssp->srcu_gp_seq, SRCU_STATE_SCAN2);
	}

	if (FUNC6(FUNC0(ssp->srcu_gp_seq)) == SRCU_STATE_SCAN2) {

		/*
		 * SRCU read-side critical sections are normally short,
		 * so check at least twice in quick succession after a flip.
		 */
		idx = 1 ^ (ssp->srcu_idx & 1);
		if (!FUNC13(ssp, idx, 2)) {
			FUNC4(&ssp->srcu_gp_mutex);
			return; /* readers present, retry later. */
		}
		FUNC11(ssp);  /* Releases ->srcu_gp_mutex. */
	}
}