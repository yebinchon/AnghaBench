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
typedef  scalar_t__ xfs_qcnt_t ;
typedef  scalar_t__ xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_quotainfo {int /*<<< orphan*/  qi_quotaofflock; int /*<<< orphan*/  qi_rtbwarnlimit; int /*<<< orphan*/  qi_iwarnlimit; int /*<<< orphan*/  qi_bwarnlimit; int /*<<< orphan*/  qi_rtbtimelimit; int /*<<< orphan*/  qi_itimelimit; int /*<<< orphan*/  qi_btimelimit; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_disk_dquot {void* d_rtbtimer; void* d_itimer; void* d_btimer; void* d_rtbwarns; void* d_iwarns; void* d_bwarns; void* d_ino_softlimit; void* d_ino_hardlimit; void* d_rtb_softlimit; void* d_rtb_hardlimit; void* d_blk_softlimit; void* d_blk_hardlimit; } ;
struct xfs_dquot {int /*<<< orphan*/  dq_flags; struct xfs_disk_dquot q_core; } ;
struct xfs_def_quota {scalar_t__ isoftlimit; scalar_t__ ihardlimit; scalar_t__ rtbsoftlimit; scalar_t__ rtbhardlimit; scalar_t__ bsoftlimit; scalar_t__ bhardlimit; } ;
struct qc_dqblk {int d_fieldmask; int /*<<< orphan*/  d_rt_spc_warns; int /*<<< orphan*/  d_ino_warns; int /*<<< orphan*/  d_spc_warns; int /*<<< orphan*/  d_rt_spc_timer; int /*<<< orphan*/  d_ino_timer; int /*<<< orphan*/  d_spc_timer; scalar_t__ d_ino_softlimit; scalar_t__ d_ino_hardlimit; int /*<<< orphan*/  d_rt_spc_softlimit; int /*<<< orphan*/  d_rt_spc_hardlimit; int /*<<< orphan*/  d_spc_softlimit; int /*<<< orphan*/  d_spc_hardlimit; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_qm_setqlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 TYPE_1__* FUNC1 (struct xfs_mount*) ; 
 int QC_INO_HARD ; 
 int QC_INO_SOFT ; 
 int QC_INO_TIMER ; 
 int QC_INO_WARNS ; 
 int QC_RT_SPC_HARD ; 
 int QC_RT_SPC_SOFT ; 
 int QC_RT_SPC_TIMER ; 
 int QC_RT_SPC_WARNS ; 
 int QC_SPC_HARD ; 
 int QC_SPC_SOFT ; 
 int QC_SPC_TIMER ; 
 int QC_SPC_WARNS ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_DQ_DIRTY ; 
 int XFS_QC_MASK ; 
 scalar_t__ FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_dquot*) ; 
 struct xfs_def_quota* FUNC13 (struct xfs_dquot*,struct xfs_quotainfo*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*,struct xfs_disk_dquot*) ; 
 int FUNC15 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ,int,struct xfs_dquot**) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_dquot*) ; 
 int FUNC17 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int FUNC18 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_trans*,struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_trans*,struct xfs_dquot*) ; 

int
FUNC21(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	struct qc_dqblk		*newlim)
{
	struct xfs_quotainfo	*q = mp->m_quotainfo;
	struct xfs_disk_dquot	*ddq;
	struct xfs_dquot	*dqp;
	struct xfs_trans	*tp;
	struct xfs_def_quota	*defq;
	int			error;
	xfs_qcnt_t		hard, soft;

	if (newlim->d_fieldmask & ~XFS_QC_MASK)
		return -EINVAL;
	if ((newlim->d_fieldmask & XFS_QC_MASK) == 0)
		return 0;

	/*
	 * We don't want to race with a quotaoff so take the quotaoff lock.
	 * We don't hold an inode lock, so there's nothing else to stop
	 * a quotaoff from happening.
	 */
	FUNC7(&q->qi_quotaofflock);

	/*
	 * Get the dquot (locked) before we start, as we need to do a
	 * transaction to allocate it if it doesn't exist. Once we have the
	 * dquot, unlock it so we can start the next transaction safely. We hold
	 * a reference to the dquot, so it's safe to do this unlock/lock without
	 * it being reclaimed in the mean time.
	 */
	error = FUNC15(mp, id, type, true, &dqp);
	if (error) {
		FUNC0(error != -ENOENT);
		goto out_unlock;
	}

	defq = FUNC13(dqp, q);
	FUNC11(dqp);

	error = FUNC17(mp, &FUNC1(mp)->tr_qm_setqlim, 0, 0, 0, &tp);
	if (error)
		goto out_rele;

	FUNC10(dqp);
	FUNC19(tp, dqp);
	ddq = &dqp->q_core;

	/*
	 * Make sure that hardlimits are >= soft limits before changing.
	 */
	hard = (newlim->d_fieldmask & QC_SPC_HARD) ?
		(xfs_qcnt_t) FUNC2(mp, newlim->d_spc_hardlimit) :
			FUNC3(ddq->d_blk_hardlimit);
	soft = (newlim->d_fieldmask & QC_SPC_SOFT) ?
		(xfs_qcnt_t) FUNC2(mp, newlim->d_spc_softlimit) :
			FUNC3(ddq->d_blk_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_blk_hardlimit = FUNC6(hard);
		ddq->d_blk_softlimit = FUNC6(soft);
		FUNC12(dqp);
		if (id == 0) {
			defq->bhardlimit = hard;
			defq->bsoftlimit = soft;
		}
	} else {
		FUNC9(mp, "blkhard %Ld < blksoft %Ld", hard, soft);
	}
	hard = (newlim->d_fieldmask & QC_RT_SPC_HARD) ?
		(xfs_qcnt_t) FUNC2(mp, newlim->d_rt_spc_hardlimit) :
			FUNC3(ddq->d_rtb_hardlimit);
	soft = (newlim->d_fieldmask & QC_RT_SPC_SOFT) ?
		(xfs_qcnt_t) FUNC2(mp, newlim->d_rt_spc_softlimit) :
			FUNC3(ddq->d_rtb_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_rtb_hardlimit = FUNC6(hard);
		ddq->d_rtb_softlimit = FUNC6(soft);
		if (id == 0) {
			defq->rtbhardlimit = hard;
			defq->rtbsoftlimit = soft;
		}
	} else {
		FUNC9(mp, "rtbhard %Ld < rtbsoft %Ld", hard, soft);
	}

	hard = (newlim->d_fieldmask & QC_INO_HARD) ?
		(xfs_qcnt_t) newlim->d_ino_hardlimit :
			FUNC3(ddq->d_ino_hardlimit);
	soft = (newlim->d_fieldmask & QC_INO_SOFT) ?
		(xfs_qcnt_t) newlim->d_ino_softlimit :
			FUNC3(ddq->d_ino_softlimit);
	if (hard == 0 || hard >= soft) {
		ddq->d_ino_hardlimit = FUNC6(hard);
		ddq->d_ino_softlimit = FUNC6(soft);
		if (id == 0) {
			defq->ihardlimit = hard;
			defq->isoftlimit = soft;
		}
	} else {
		FUNC9(mp, "ihard %Ld < isoft %Ld", hard, soft);
	}

	/*
	 * Update warnings counter(s) if requested
	 */
	if (newlim->d_fieldmask & QC_SPC_WARNS)
		ddq->d_bwarns = FUNC4(newlim->d_spc_warns);
	if (newlim->d_fieldmask & QC_INO_WARNS)
		ddq->d_iwarns = FUNC4(newlim->d_ino_warns);
	if (newlim->d_fieldmask & QC_RT_SPC_WARNS)
		ddq->d_rtbwarns = FUNC4(newlim->d_rt_spc_warns);

	if (id == 0) {
		/*
		 * Timelimits for the super user set the relative time
		 * the other users can be over quota for this file system.
		 * If it is zero a default is used.  Ditto for the default
		 * soft and hard limit values (already done, above), and
		 * for warnings.
		 */
		if (newlim->d_fieldmask & QC_SPC_TIMER) {
			q->qi_btimelimit = newlim->d_spc_timer;
			ddq->d_btimer = FUNC5(newlim->d_spc_timer);
		}
		if (newlim->d_fieldmask & QC_INO_TIMER) {
			q->qi_itimelimit = newlim->d_ino_timer;
			ddq->d_itimer = FUNC5(newlim->d_ino_timer);
		}
		if (newlim->d_fieldmask & QC_RT_SPC_TIMER) {
			q->qi_rtbtimelimit = newlim->d_rt_spc_timer;
			ddq->d_rtbtimer = FUNC5(newlim->d_rt_spc_timer);
		}
		if (newlim->d_fieldmask & QC_SPC_WARNS)
			q->qi_bwarnlimit = newlim->d_spc_warns;
		if (newlim->d_fieldmask & QC_INO_WARNS)
			q->qi_iwarnlimit = newlim->d_ino_warns;
		if (newlim->d_fieldmask & QC_RT_SPC_WARNS)
			q->qi_rtbwarnlimit = newlim->d_rt_spc_warns;
	} else {
		/*
		 * If the user is now over quota, start the timelimit.
		 * The user will not be 'warned'.
		 * Note that we keep the timers ticking, whether enforcement
		 * is on or off. We don't really want to bother with iterating
		 * over all ondisk dquots and turning the timers on/off.
		 */
		FUNC14(mp, ddq);
	}
	dqp->dq_flags |= XFS_DQ_DIRTY;
	FUNC20(tp, dqp);

	error = FUNC18(tp);

out_rele:
	FUNC16(dqp);
out_unlock:
	FUNC8(&q->qi_quotaofflock);
	return error;
}