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
typedef  scalar_t__ uint32_t ;
struct lm_lockstruct {scalar_t__ ls_recover_start; scalar_t__ ls_recover_block; int ls_recover_size; int /*<<< orphan*/  ls_lvb_bits; int /*<<< orphan*/  ls_recover_spin; int /*<<< orphan*/  ls_recover_result; int /*<<< orphan*/  ls_recover_submit; int /*<<< orphan*/  ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_BLOCK_LOCKS ; 
 int /*<<< orphan*/  DFL_DLM_RECOVERY ; 
 int /*<<< orphan*/  DFL_FIRST_MOUNT ; 
 int /*<<< orphan*/  DFL_FIRST_MOUNT_DONE ; 
 int /*<<< orphan*/  DFL_MOUNT_DONE ; 
 int DLM_LKF_CONVERT ; 
 int DLM_LKF_VALBLK ; 
 int /*<<< orphan*/  DLM_LOCK_NL ; 
 int /*<<< orphan*/  DLM_LOCK_PR ; 
 int GDLM_LVB_SIZE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lm_lockstruct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct gfs2_sbd *sdp)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	uint32_t start_gen, block_gen;
	int error;

restart:
	FUNC9(&ls->ls_recover_spin);
	start_gen = ls->ls_recover_start;
	block_gen = ls->ls_recover_block;

	if (FUNC11(DFL_BLOCK_LOCKS, &ls->ls_recover_flags) ||
	    !FUNC11(DFL_MOUNT_DONE, &ls->ls_recover_flags) ||
	    !FUNC11(DFL_FIRST_MOUNT, &ls->ls_recover_flags)) {
		/* sanity check, should not happen */
		FUNC4(sdp, "control_first_done start %u block %u flags %lx\n",
		       start_gen, block_gen, ls->ls_recover_flags);
		FUNC10(&ls->ls_recover_spin);
		FUNC3(sdp);
		return -1;
	}

	if (start_gen == block_gen) {
		/*
		 * Wait for the end of a dlm recovery cycle to switch from
		 * first mounter recovery.  We can ignore any recover_slot
		 * callbacks between the recover_prep and next recover_done
		 * because we are still the first mounter and any failed nodes
		 * have not fully mounted, so they don't need recovery.
		 */
		FUNC10(&ls->ls_recover_spin);
		FUNC5(sdp, "control_first_done wait gen %u\n", start_gen);

		FUNC12(&ls->ls_recover_flags, DFL_DLM_RECOVERY,
			    TASK_UNINTERRUPTIBLE);
		goto restart;
	}

	FUNC0(DFL_FIRST_MOUNT, &ls->ls_recover_flags);
	FUNC8(DFL_FIRST_MOUNT_DONE, &ls->ls_recover_flags);
	FUNC6(ls->ls_recover_submit, 0, ls->ls_recover_size*sizeof(uint32_t));
	FUNC6(ls->ls_recover_result, 0, ls->ls_recover_size*sizeof(uint32_t));
	FUNC10(&ls->ls_recover_spin);

	FUNC6(ls->ls_lvb_bits, 0, GDLM_LVB_SIZE);
	FUNC2(ls, start_gen, ls->ls_lvb_bits);

	error = FUNC7(sdp, DLM_LOCK_PR, DLM_LKF_CONVERT);
	if (error)
		FUNC4(sdp, "control_first_done mounted PR error %d\n", error);

	error = FUNC1(sdp, DLM_LOCK_NL, DLM_LKF_CONVERT|DLM_LKF_VALBLK);
	if (error)
		FUNC4(sdp, "control_first_done control NL error %d\n", error);

	return error;
}