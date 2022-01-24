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
struct lm_lockstruct {int /*<<< orphan*/  ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_NO_DLM_OPS ; 
 int FUNC0 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_sbd *sdp)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	int error;

	if (FUNC2(DFL_NO_DLM_OPS, &ls->ls_recover_flags))
		return;

	error = FUNC0(sdp);
	if (error)
		FUNC1(sdp, "mount first_done error %d\n", error);
}