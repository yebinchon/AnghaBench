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
typedef  void* uint32_t ;
struct lm_lockstruct {int ls_jid; int /*<<< orphan*/  ls_recover_spin; int /*<<< orphan*/  ls_recover_flags; void* ls_recover_mount; void* ls_recover_start; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_control_work; struct lm_lockstruct sd_lockstruct; } ;
struct dlm_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_DLM_RECOVERY ; 
 int /*<<< orphan*/  DFL_UNMOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_control_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,struct dlm_slot*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *arg, struct dlm_slot *slots, int num_slots,
			      int our_slot, uint32_t generation)
{
	struct gfs2_sbd *sdp = arg;
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;

	/* ensure the ls jid arrays are large enough */
	FUNC2(sdp, slots, num_slots);

	FUNC4(&ls->ls_recover_spin);
	ls->ls_recover_start = generation;

	if (!ls->ls_recover_mount) {
		ls->ls_recover_mount = generation;
		ls->ls_jid = our_slot - 1;
	}

	if (!FUNC6(DFL_UNMOUNT, &ls->ls_recover_flags))
		FUNC1(gfs2_control_wq, &sdp->sd_control_work, 0);

	FUNC0(DFL_DLM_RECOVERY, &ls->ls_recover_flags);
	FUNC3();
	FUNC7(&ls->ls_recover_flags, DFL_DLM_RECOVERY);
	FUNC5(&ls->ls_recover_spin);
}