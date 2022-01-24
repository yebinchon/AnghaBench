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
struct gfs2_sbd {int /*<<< orphan*/  sd_freeze_work; int /*<<< orphan*/  sd_vfs; int /*<<< orphan*/  sd_freeze_state; int /*<<< orphan*/  sd_flags; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; TYPE_1__ gl_name; } ;

/* Variables and functions */
 int GFS2_LFC_FREEZE_GO_SYNC ; 
 int GFS2_LOG_HEAD_FLUSH_FREEZE ; 
 scalar_t__ LM_ST_SHARED ; 
 int /*<<< orphan*/  SDF_JOURNAL_LIVE ; 
 int /*<<< orphan*/  SFS_STARTING_FREEZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_freeze_wq ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gfs2_glock *gl)
{
	int error = 0;
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;

	if (gl->gl_state == LM_ST_SHARED &&
	    FUNC6(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
		FUNC0(&sdp->sd_freeze_state, SFS_STARTING_FREEZE);
		error = FUNC1(sdp->sd_vfs);
		if (error) {
			FUNC2(sdp, "GFS2: couldn't freeze filesystem: %d\n",
				error);
			FUNC3(sdp, 0);
		}
		FUNC5(gfs2_freeze_wq, &sdp->sd_freeze_work);
		FUNC4(sdp, NULL, GFS2_LOG_HEAD_FLUSH_FREEZE |
			       GFS2_LFC_FREEZE_GO_SYNC);
	}
}