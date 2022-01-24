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
struct gfs2_sbd {TYPE_1__* sd_jdesc; int /*<<< orphan*/  sd_log_blks_free; int /*<<< orphan*/  sd_reserving_log; int /*<<< orphan*/  sd_reserving_log_wait; int /*<<< orphan*/  sd_vfs; int /*<<< orphan*/ * sd_logd_process; int /*<<< orphan*/ * sd_quotad_process; int /*<<< orphan*/  sd_flags; int /*<<< orphan*/  sd_freeze_gl; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {scalar_t__ jd_blocks; } ;

/* Variables and functions */
 int GFS2_LFC_MAKE_FS_RO ; 
 int GFS2_LOG_HEAD_FLUSH_SHUTDOWN ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  gfs2_delete_workqueue ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC5 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

int FUNC13(struct gfs2_sbd *sdp)
{
	struct gfs2_holder freeze_gh;
	int error;

	error = FUNC4(sdp->sd_freeze_gl, LM_ST_SHARED, GL_NOCACHE,
				   &freeze_gh);
	if (error && !FUNC11(SDF_WITHDRAWN, &sdp->sd_flags))
		return error;

	FUNC1(gfs2_delete_workqueue);
	if (sdp->sd_quotad_process)
		FUNC10(sdp->sd_quotad_process);
	sdp->sd_quotad_process = NULL;
	if (sdp->sd_logd_process)
		FUNC10(sdp->sd_logd_process);
	sdp->sd_logd_process = NULL;

	FUNC8(sdp->sd_vfs, 0);
	FUNC9(sdp->sd_vfs, 0);

	FUNC6(sdp, NULL, GFS2_LOG_HEAD_FLUSH_SHUTDOWN |
		       GFS2_LFC_MAKE_FS_RO);
	FUNC12(sdp->sd_reserving_log_wait, FUNC0(&sdp->sd_reserving_log) == 0);
	FUNC2(sdp, FUNC0(&sdp->sd_log_blks_free) == sdp->sd_jdesc->jd_blocks);

	if (FUNC5(&freeze_gh))
		FUNC3(&freeze_gh);

	FUNC7(sdp);

	return error;
}