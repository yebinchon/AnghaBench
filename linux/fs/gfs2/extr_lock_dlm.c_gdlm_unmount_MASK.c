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
struct lm_lockstruct {int /*<<< orphan*/ * ls_dlm; int /*<<< orphan*/  ls_recover_spin; int /*<<< orphan*/  ls_recover_flags; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_control_work; struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_NO_DLM_OPS ; 
 int /*<<< orphan*/  DFL_UNMOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lm_lockstruct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gfs2_sbd *sdp)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;

	if (FUNC6(DFL_NO_DLM_OPS, &ls->ls_recover_flags))
		goto release;

	/* wait for gfs2_control_wq to be done with this mount */

	FUNC4(&ls->ls_recover_spin);
	FUNC3(DFL_UNMOUNT, &ls->ls_recover_flags);
	FUNC5(&ls->ls_recover_spin);
	FUNC1(&sdp->sd_control_work);

	/* mounted_lock and control_lock will be purged in dlm recovery */
release:
	if (ls->ls_dlm) {
		FUNC0(ls->ls_dlm, 2);
		ls->ls_dlm = NULL;
	}

	FUNC2(ls);
}