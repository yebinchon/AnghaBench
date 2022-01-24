#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_mutex; int /*<<< orphan*/  sd_qc_inode; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; scalar_t__ qd_change; TYPE_3__ qd_id; int /*<<< orphan*/  qd_bh; struct gfs2_quota_change* qd_bh_qc; TYPE_2__* qd_gl; } ;
struct gfs2_quota_change {void* qc_id; void* qc_flags; scalar_t__ qc_change; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_5__ {TYPE_1__ gl_name; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_QCF_USER ; 
 int /*<<< orphan*/  QDF_CHANGE ; 
 int /*<<< orphan*/  QDF_QMSG_QUIET ; 
 scalar_t__ USRQUOTA ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  qd_lock ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct gfs2_quota_data *qd, s64 change)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;
	struct gfs2_inode *ip = FUNC0(sdp->sd_qc_inode);
	struct gfs2_quota_change *qc = qd->qd_bh_qc;
	s64 x;

	FUNC8(&sdp->sd_quota_mutex);
	FUNC7(ip->i_gl, qd->qd_bh);

	if (!FUNC17(QDF_CHANGE, &qd->qd_flags)) {
		qc->qc_change = 0;
		qc->qc_flags = 0;
		if (qd->qd_id.type == USRQUOTA)
			qc->qc_flags = FUNC3(GFS2_QCF_USER);
		qc->qc_id = FUNC3(FUNC5(&init_user_ns, qd->qd_id));
	}

	x = FUNC1(qc->qc_change) + change;
	qc->qc_change = FUNC4(x);

	FUNC14(&qd_lock);
	qd->qd_change = x;
	FUNC15(&qd_lock);

	if (!x) {
		FUNC6(sdp, FUNC17(QDF_CHANGE, &qd->qd_flags));
		FUNC2(QDF_CHANGE, &qd->qd_flags);
		qc->qc_flags = 0;
		qc->qc_id = 0;
		FUNC13(qd);
		FUNC11(qd);
	} else if (!FUNC16(QDF_CHANGE, &qd->qd_flags)) {
		FUNC10(qd);
		FUNC12(qd);
	}

	if (change < 0) /* Reset quiet flag if we freed some blocks */
		FUNC2(QDF_QMSG_QUIET, &qd->qd_flags);
	FUNC9(&sdp->sd_quota_mutex);
}