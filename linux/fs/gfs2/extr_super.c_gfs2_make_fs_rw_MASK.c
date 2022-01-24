#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int /*<<< orphan*/ * sd_logd_process; int /*<<< orphan*/ * sd_quotad_process; int /*<<< orphan*/  sd_flags; scalar_t__ sd_log_sequence; TYPE_2__* sd_jdesc; int /*<<< orphan*/  sd_freeze_gl; } ;
struct gfs2_log_header_host {int lh_flags; int /*<<< orphan*/  lh_blkno; scalar_t__ lh_sequence; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int /*<<< orphan*/  gh_flags; } ;
struct gfs2_glock {TYPE_1__* gl_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  jd_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* go_inval ) (struct gfs2_glock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_METADATA ; 
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_LOG_HEAD_UNMOUNT ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  SDF_JOURNAL_LIVE ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 int FUNC2 (TYPE_2__*,struct gfs2_log_header_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gfs2_sbd*) ; 
 int FUNC7 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 

int FUNC11(struct gfs2_sbd *sdp)
{
	struct gfs2_inode *ip = FUNC0(sdp->sd_jdesc->jd_inode);
	struct gfs2_glock *j_gl = ip->i_gl;
	struct gfs2_holder freeze_gh;
	struct gfs2_log_header_host head;
	int error;

	error = FUNC7(sdp);
	if (error)
		return error;

	error = FUNC4(sdp->sd_freeze_gl, LM_ST_SHARED, 0,
				   &freeze_gh);
	if (error)
		goto fail_threads;

	j_gl->gl_ops->go_inval(j_gl, DIO_METADATA);

	error = FUNC2(sdp->sd_jdesc, &head, false);
	if (error)
		goto fail;

	if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT)) {
		FUNC1(sdp);
		error = -EIO;
		goto fail;
	}

	/*  Initialize some head of the log stuff  */
	sdp->sd_log_sequence = head.lh_sequence + 1;
	FUNC5(sdp, head.lh_blkno);

	error = FUNC6(sdp);
	if (error)
		goto fail;

	FUNC9(SDF_JOURNAL_LIVE, &sdp->sd_flags);

	FUNC3(&freeze_gh);

	return 0;

fail:
	freeze_gh.gh_flags |= GL_NOCACHE;
	FUNC3(&freeze_gh);
fail_threads:
	if (sdp->sd_quotad_process)
		FUNC8(sdp->sd_quotad_process);
	sdp->sd_quotad_process = NULL;
	if (sdp->sd_logd_process)
		FUNC8(sdp->sd_logd_process);
	sdp->sd_logd_process = NULL;
	return error;
}