#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct xfs_dquot {int dummy; } ;
typedef  struct xfs_dquot xfs_trans_t ;
struct TYPE_14__ {int m_flags; int /*<<< orphan*/  m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_13__ {int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; } ;
struct xfs_inode {TYPE_1__ i_d; int /*<<< orphan*/  i_gdquot; int /*<<< orphan*/  i_udquot; TYPE_2__* i_mount; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_gid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_12__ {int /*<<< orphan*/  tr_ichange; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_ATIME ; 
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  CAP_FOWNER ; 
 int /*<<< orphan*/  CAP_FSETID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 TYPE_10__* FUNC1 (TYPE_2__*) ; 
 int S_ISGID ; 
 int S_ISUID ; 
 struct inode* FUNC2 (struct xfs_inode*) ; 
 int XFS_ATTR_NOACL ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int XFS_MOUNT_WSYNC ; 
 int /*<<< orphan*/  XFS_QMOPT_FORCE_RES ; 
 int /*<<< orphan*/  XFS_QMOPT_GQUOTA ; 
 int /*<<< orphan*/  XFS_QMOPT_UQUOTA ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_dquot*) ; 
 struct xfs_dquot* FUNC19 (struct xfs_dquot*,struct xfs_inode*,int /*<<< orphan*/ *,struct xfs_dquot*) ; 
 int FUNC20 (struct xfs_dquot*,struct xfs_inode*,struct xfs_dquot*,struct xfs_dquot*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_dquot**,struct xfs_dquot**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct xfs_inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_inode*,struct iattr*) ; 
 int FUNC25 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_dquot**) ; 
 int /*<<< orphan*/  FUNC26 (struct xfs_dquot*) ; 
 int FUNC27 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC28 (struct xfs_dquot*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_dquot*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  xs_ig_attrchg ; 

int
FUNC31(
	struct xfs_inode	*ip,
	struct iattr		*iattr,
	int			flags)
{
	xfs_mount_t		*mp = ip->i_mount;
	struct inode		*inode = FUNC2(ip);
	int			mask = iattr->ia_valid;
	xfs_trans_t		*tp;
	int			error;
	kuid_t			uid = GLOBAL_ROOT_UID, iuid = GLOBAL_ROOT_UID;
	kgid_t			gid = GLOBAL_ROOT_GID, igid = GLOBAL_ROOT_GID;
	struct xfs_dquot	*udqp = NULL, *gdqp = NULL;
	struct xfs_dquot	*olddquot1 = NULL, *olddquot2 = NULL;

	FUNC0((mask & ATTR_SIZE) == 0);

	/*
	 * If disk quotas is on, we make sure that the dquots do exist on disk,
	 * before we start any other transactions. Trying to do this later
	 * is messy. We don't care to take a readlock to look at the ids
	 * in inode here, because we can't hold it across the trans_reserve.
	 * If the IDs do change before we take the ilock, we're covered
	 * because the i_*dquot fields will get updated anyway.
	 */
	if (FUNC5(mp) && (mask & (ATTR_UID|ATTR_GID))) {
		uint	qflags = 0;

		if ((mask & ATTR_UID) && FUNC7(mp)) {
			uid = iattr->ia_uid;
			qflags |= XFS_QMOPT_UQUOTA;
		} else {
			uid = inode->i_uid;
		}
		if ((mask & ATTR_GID) && FUNC3(mp)) {
			gid = iattr->ia_gid;
			qflags |= XFS_QMOPT_GQUOTA;
		}  else {
			gid = inode->i_gid;
		}

		/*
		 * We take a reference when we initialize udqp and gdqp,
		 * so it is important that we never blindly double trip on
		 * the same variable. See xfs_create() for an example.
		 */
		FUNC0(udqp == NULL);
		FUNC0(gdqp == NULL);
		error = FUNC21(ip, FUNC17(uid),
					   FUNC16(gid),
					   FUNC13(ip),
					   qflags, &udqp, &gdqp, NULL);
		if (error)
			return error;
	}

	error = FUNC25(mp, &FUNC1(mp)->tr_ichange, 0, 0, 0, &tp);
	if (error)
		goto out_dqrele;

	FUNC14(ip, XFS_ILOCK_EXCL);
	FUNC28(tp, ip, 0);

	/*
	 * Change file ownership.  Must be the owner or privileged.
	 */
	if (mask & (ATTR_UID|ATTR_GID)) {
		/*
		 * These IDs could have changed since we last looked at them.
		 * But, we're assured that if the ownership did change
		 * while we didn't have the inode locked, inode's dquot(s)
		 * would have changed also.
		 */
		iuid = inode->i_uid;
		igid = inode->i_gid;
		gid = (mask & ATTR_GID) ? iattr->ia_gid : igid;
		uid = (mask & ATTR_UID) ? iattr->ia_uid : iuid;

		/*
		 * Do a quota reservation only if uid/gid is actually
		 * going to change.
		 */
		if (FUNC6(mp) &&
		    ((FUNC7(mp) && !FUNC12(iuid, uid)) ||
		     (FUNC3(mp) && !FUNC10(igid, gid)))) {
			FUNC0(tp);
			error = FUNC20(tp, ip, udqp, gdqp,
						NULL, FUNC9(CAP_FOWNER) ?
						XFS_QMOPT_FORCE_RES : 0);
			if (error)	/* out of quota */
				goto out_cancel;
		}
	}

	/*
	 * Change file ownership.  Must be the owner or privileged.
	 */
	if (mask & (ATTR_UID|ATTR_GID)) {
		/*
		 * CAP_FSETID overrides the following restrictions:
		 *
		 * The set-user-ID and set-group-ID bits of a file will be
		 * cleared upon successful return from chown()
		 */
		if ((inode->i_mode & (S_ISUID|S_ISGID)) &&
		    !FUNC9(CAP_FSETID))
			inode->i_mode &= ~(S_ISUID|S_ISGID);

		/*
		 * Change the ownerships and register quota modifications
		 * in the transaction.
		 */
		if (!FUNC12(iuid, uid)) {
			if (FUNC6(mp) && FUNC7(mp)) {
				FUNC0(mask & ATTR_UID);
				FUNC0(udqp);
				olddquot1 = FUNC19(tp, ip,
							&ip->i_udquot, udqp);
			}
			ip->i_d.di_uid = FUNC17(uid);
			inode->i_uid = uid;
		}
		if (!FUNC10(igid, gid)) {
			if (FUNC6(mp) && FUNC3(mp)) {
				FUNC0(FUNC22(&mp->m_sb) ||
				       !FUNC4(mp));
				FUNC0(mask & ATTR_GID);
				FUNC0(gdqp);
				olddquot2 = FUNC19(tp, ip,
							&ip->i_gdquot, gdqp);
			}
			ip->i_d.di_gid = FUNC16(gid);
			inode->i_gid = gid;
		}
	}

	if (mask & ATTR_MODE)
		FUNC23(ip, iattr);
	if (mask & (ATTR_ATIME|ATTR_CTIME|ATTR_MTIME))
		FUNC24(ip, iattr);

	FUNC29(tp, ip, XFS_ILOG_CORE);

	FUNC8(mp, xs_ig_attrchg);

	if (mp->m_flags & XFS_MOUNT_WSYNC)
		FUNC30(tp);
	error = FUNC27(tp);

	FUNC15(ip, XFS_ILOCK_EXCL);

	/*
	 * Release any dquot(s) the inode had kept before chown.
	 */
	FUNC18(olddquot1);
	FUNC18(olddquot2);
	FUNC18(udqp);
	FUNC18(gdqp);

	if (error)
		return error;

	/*
	 * XXX(hch): Updating the ACL entries is not atomic vs the i_mode
	 * 	     update.  We could avoid this with linked transactions
	 * 	     and passing down the transaction pointer all the way
	 *	     to attr_set.  No previous user of the generic
	 * 	     Posix ACL code seems to care about this issue either.
	 */
	if ((mask & ATTR_MODE) && !(flags & XFS_ATTR_NOACL)) {
		error = FUNC11(inode, inode->i_mode);
		if (error)
			return error;
	}

	return 0;

out_cancel:
	FUNC26(tp);
	FUNC15(ip, XFS_ILOCK_EXCL);
out_dqrele:
	FUNC18(udqp);
	FUNC18(gdqp);
	return error;
}