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
struct lm_lockstruct {unsigned int ls_jid; unsigned int ls_recover_size; unsigned int* ls_recover_result; int /*<<< orphan*/  ls_recover_spin; int /*<<< orphan*/  ls_recover_flags; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_control_work; struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_FIRST_MOUNT ; 
 int /*<<< orphan*/  DFL_NO_DLM_OPS ; 
 int /*<<< orphan*/  DFL_UNMOUNT ; 
 int /*<<< orphan*/  HZ ; 
 unsigned int LM_RD_GAVEUP ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  gfs2_control_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gfs2_sbd *sdp, unsigned int jid,
				 unsigned int result)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;

	if (FUNC5(DFL_NO_DLM_OPS, &ls->ls_recover_flags))
		return;

	/* don't care about the recovery of own journal during mount */
	if (jid == ls->ls_jid)
		return;

	FUNC3(&ls->ls_recover_spin);
	if (FUNC5(DFL_FIRST_MOUNT, &ls->ls_recover_flags)) {
		FUNC4(&ls->ls_recover_spin);
		return;
	}
	if (ls->ls_recover_size < jid + 1) {
		FUNC0(sdp, "recovery_result jid %d short size %d\n",
		       jid, ls->ls_recover_size);
		FUNC4(&ls->ls_recover_spin);
		return;
	}

	FUNC1(sdp, "recover jid %d result %s\n", jid,
		result == LM_RD_GAVEUP ? "busy" : "success");

	ls->ls_recover_result[jid] = result;

	/* GAVEUP means another node is recovering the journal; delay our
	   next attempt to recover it, to give the other node a chance to
	   finish before trying again */

	if (!FUNC5(DFL_UNMOUNT, &ls->ls_recover_flags))
		FUNC2(gfs2_control_wq, &sdp->sd_control_work,
				   result == LM_RD_GAVEUP ? HZ : 0);
	FUNC4(&ls->ls_recover_spin);
}