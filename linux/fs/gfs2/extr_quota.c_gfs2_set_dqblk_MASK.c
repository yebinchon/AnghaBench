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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct qc_dqblk {int d_fieldmask; int d_spc_softlimit; int d_spc_hardlimit; int d_space; } ;
struct kqid {scalar_t__ type; } ;
struct TYPE_5__ {int sb_bsize_shift; } ;
struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_2__ sd_sb; TYPE_1__ sd_args; int /*<<< orphan*/  sd_quota_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  qb_value; int /*<<< orphan*/  qb_limit; int /*<<< orphan*/  qb_warn; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; TYPE_3__ qd_qb; int /*<<< orphan*/  qd_gl; } ;
struct gfs2_quota {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int GFS2_FIELDMASK ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 scalar_t__ GRPQUOTA ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int QC_SPACE ; 
 int QC_SPC_HARD ; 
 int QC_SPC_SOFT ; 
 int /*<<< orphan*/  QDF_QMSG_QUIET ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ USRQUOTA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_quota_data*,struct qc_dqblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 scalar_t__ FUNC9 (struct gfs2_inode*,unsigned int) ; 
 int FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 
 int FUNC13 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_quota_data*) ; 
 int FUNC18 (struct gfs2_sbd*,struct kqid,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_quota_data*) ; 
 int FUNC20 (struct gfs2_sbd*,struct gfs2_quota_data*) ; 

__attribute__((used)) static int FUNC21(struct super_block *sb, struct kqid qid,
			  struct qc_dqblk *fdq)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_inode *ip = FUNC0(sdp->sd_quota_inode);
	struct gfs2_quota_data *qd;
	struct gfs2_holder q_gh, i_gh;
	unsigned int data_blocks, ind_blocks;
	unsigned int blocks = 0;
	int alloc_required;
	loff_t offset;
	int error;

	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return -ESRCH; /* Crazy XFS error code */

	if ((qid.type != USRQUOTA) &&
	    (qid.type != GRPQUOTA))
		return -EINVAL;

	if (fdq->d_fieldmask & ~GFS2_FIELDMASK)
		return -EINVAL;

	error = FUNC18(sdp, qid, &qd);
	if (error)
		return error;

	error = FUNC10(ip);
	if (error)
		goto out_put;

	FUNC15(&ip->i_inode);
	error = FUNC5(qd->qd_gl, LM_ST_EXCLUSIVE, 0, &q_gh);
	if (error)
		goto out_unlockput;
	error = FUNC5(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
	if (error)
		goto out_q;

	/* Check for existing entry, if none then alloc new blocks */
	error = FUNC20(sdp, qd);
	if (error)
		goto out_i;

	/* If nothing has changed, this is a no-op */
	if ((fdq->d_fieldmask & QC_SPC_SOFT) &&
	    ((fdq->d_spc_softlimit >> sdp->sd_sb.sb_bsize_shift) == FUNC1(qd->qd_qb.qb_warn)))
		fdq->d_fieldmask ^= QC_SPC_SOFT;

	if ((fdq->d_fieldmask & QC_SPC_HARD) &&
	    ((fdq->d_spc_hardlimit >> sdp->sd_sb.sb_bsize_shift) == FUNC1(qd->qd_qb.qb_limit)))
		fdq->d_fieldmask ^= QC_SPC_HARD;

	if ((fdq->d_fieldmask & QC_SPACE) &&
	    ((fdq->d_space >> sdp->sd_sb.sb_bsize_shift) == FUNC1(qd->qd_qb.qb_value)))
		fdq->d_fieldmask ^= QC_SPACE;

	if (fdq->d_fieldmask == 0)
		goto out_i;

	offset = FUNC17(qd);
	alloc_required = FUNC13(ip, offset, sizeof(struct gfs2_quota));
	if (FUNC8(ip))
		alloc_required = 1;
	if (alloc_required) {
		struct gfs2_alloc_parms ap = { .aflags = 0, };
		FUNC14(ip, sizeof(struct gfs2_quota),
				       &data_blocks, &ind_blocks);
		blocks = 1 + data_blocks + ind_blocks;
		ap.target = blocks;
		error = FUNC7(ip, &ap);
		if (error)
			goto out_i;
		blocks += FUNC9(ip, blocks);
	}

	/* Some quotas span block boundaries and can update two blocks,
	   adding an extra block to the transaction to handle such quotas */
	error = FUNC11(sdp, blocks + RES_DINODE + 2, 0);
	if (error)
		goto out_release;

	/* Apply changes */
	error = FUNC3(ip, offset, 0, qd, fdq);
	if (!error)
		FUNC2(QDF_QMSG_QUIET, &qd->qd_flags);

	FUNC12(sdp);
out_release:
	if (alloc_required)
		FUNC6(ip);
out_i:
	FUNC4(&i_gh);
out_q:
	FUNC4(&q_gh);
out_unlockput:
	FUNC16(&ip->i_inode);
out_put:
	FUNC19(qd);
	return error;
}