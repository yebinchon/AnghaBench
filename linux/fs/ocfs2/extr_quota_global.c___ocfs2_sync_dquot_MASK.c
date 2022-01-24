#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct super_block {TYPE_1__* s_op; } ;
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gi; } ;
struct ocfs2_global_disk_dqblk {int dummy; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_8__ {scalar_t__ dqb_curspace; scalar_t__ dqb_curinodes; scalar_t__ dqb_itime; scalar_t__ dqb_btime; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_isoftlimit; } ;
struct dquot {TYPE_5__ dq_id; int /*<<< orphan*/  dq_dqb_lock; TYPE_2__ dq_dqb; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_off; struct super_block* dq_sb; } ;
typedef  scalar_t__ s64 ;
struct TYPE_11__ {scalar_t__ dq_origspace; scalar_t__ dq_originodes; int /*<<< orphan*/  dq_use_count; } ;
struct TYPE_9__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_7__ {int (* quota_read ) (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DQ_BLKS_B ; 
 int /*<<< orphan*/  DQ_INODES_B ; 
 scalar_t__ DQ_LASTSET_B ; 
 int EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_6__* FUNC0 (struct dquot*) ; 
 scalar_t__ QIF_BLIMITS_B ; 
 scalar_t__ QIF_BTIME_B ; 
 scalar_t__ QIF_ILIMITS_B ; 
 scalar_t__ QIF_INODES_B ; 
 scalar_t__ QIF_ITIME_B ; 
 scalar_t__ QIF_SPACE_B ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_5__) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 void* FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot*,struct ocfs2_global_disk_dqblk*) ; 
 int FUNC10 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct dquot*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct dquot*) ; 
 TYPE_3__* FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,long long,scalar_t__,long long) ; 

int FUNC20(struct dquot *dquot, int freeing)
{
	int err, err2;
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_id.type;
	struct ocfs2_mem_dqinfo *info = FUNC14(sb, type)->dqi_priv;
	struct ocfs2_global_disk_dqblk dqblk;
	s64 spacechange, inodechange;
	time64_t olditime, oldbtime;

	err = sb->s_op->quota_read(sb, type, (char *)&dqblk,
				   sizeof(struct ocfs2_global_disk_dqblk),
				   dquot->dq_off);
	if (err != sizeof(struct ocfs2_global_disk_dqblk)) {
		if (err >= 0) {
			FUNC7(ML_ERROR, "Short read from global quota file "
				       "(%u read)\n", err);
			err = -EIO;
		}
		goto out;
	}

	/* Update space and inode usage. Get also other information from
	 * global quota file so that we don't overwrite any changes there.
	 * We are */
	FUNC15(&dquot->dq_dqb_lock);
	spacechange = dquot->dq_dqb.dqb_curspace -
					FUNC0(dquot)->dq_origspace;
	inodechange = dquot->dq_dqb.dqb_curinodes -
					FUNC0(dquot)->dq_originodes;
	olditime = dquot->dq_dqb.dqb_itime;
	oldbtime = dquot->dq_dqb.dqb_btime;
	FUNC9(dquot, &dqblk);
	FUNC19(FUNC4(&init_user_ns, dquot->dq_id),
			       dquot->dq_dqb.dqb_curspace,
			       (long long)spacechange,
			       dquot->dq_dqb.dqb_curinodes,
			       (long long)inodechange);
	if (!FUNC18(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags))
		dquot->dq_dqb.dqb_curspace += spacechange;
	if (!FUNC18(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags))
		dquot->dq_dqb.dqb_curinodes += inodechange;
	/* Set properly space grace time... */
	if (dquot->dq_dqb.dqb_bsoftlimit &&
	    dquot->dq_dqb.dqb_curspace > dquot->dq_dqb.dqb_bsoftlimit) {
		if (!FUNC18(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags) &&
		    oldbtime > 0) {
			if (dquot->dq_dqb.dqb_btime > 0)
				dquot->dq_dqb.dqb_btime =
					FUNC6(dquot->dq_dqb.dqb_btime, oldbtime);
			else
				dquot->dq_dqb.dqb_btime = oldbtime;
		}
	} else {
		dquot->dq_dqb.dqb_btime = 0;
		FUNC3(DQ_BLKS_B, &dquot->dq_flags);
	}
	/* Set properly inode grace time... */
	if (dquot->dq_dqb.dqb_isoftlimit &&
	    dquot->dq_dqb.dqb_curinodes > dquot->dq_dqb.dqb_isoftlimit) {
		if (!FUNC18(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags) &&
		    olditime > 0) {
			if (dquot->dq_dqb.dqb_itime > 0)
				dquot->dq_dqb.dqb_itime =
					FUNC6(dquot->dq_dqb.dqb_itime, olditime);
			else
				dquot->dq_dqb.dqb_itime = olditime;
		}
	} else {
		dquot->dq_dqb.dqb_itime = 0;
		FUNC3(DQ_INODES_B, &dquot->dq_flags);
	}
	/* All information is properly updated, clear the flags */
	FUNC1(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags);
	FUNC1(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags);
	FUNC1(DQ_LASTSET_B + QIF_BLIMITS_B, &dquot->dq_flags);
	FUNC1(DQ_LASTSET_B + QIF_ILIMITS_B, &dquot->dq_flags);
	FUNC1(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags);
	FUNC1(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags);
	FUNC0(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
	FUNC0(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
	FUNC16(&dquot->dq_dqb_lock);
	err = FUNC10(info, freeing);
	if (err < 0) {
		FUNC7(ML_ERROR, "Failed to lock quota info, losing quota write"
			       " (type=%d, id=%u)\n", dquot->dq_id.type,
			       (unsigned)FUNC4(&init_user_ns, dquot->dq_id));
		goto out;
	}
	if (freeing)
		FUNC0(dquot)->dq_use_count--;
	err = FUNC13(&info->dqi_gi, dquot);
	if (err < 0)
		goto out_qlock;
	if (freeing && !FUNC0(dquot)->dq_use_count) {
		err = FUNC12(&info->dqi_gi, dquot);
		if (FUNC5(FUNC14(sb, type))) {
			err2 = FUNC2(sb, type);
			if (!err)
				err = err2;
		}
	}
out_qlock:
	FUNC11(info, freeing);
out:
	if (err < 0)
		FUNC8(err);
	return err;
}