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
typedef  int /*<<< orphan*/  xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_quotainfo {int dummy; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_dquot {int dummy; } ;
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ESRCH ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dquot*) ; 
 struct radix_tree_root* FUNC4 (struct xfs_quotainfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 struct xfs_dquot* FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_dquot*) ; 
 int FUNC10 (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int /*<<< orphan*/ ,struct xfs_dquot*) ; 
 struct xfs_dquot* FUNC11 (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_qm_dquot_dups ; 

int
FUNC16(
	struct xfs_inode	*ip,
	uint			type,
	bool			can_alloc,
	struct xfs_dquot	**O_dqpp)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_quotainfo	*qi = mp->m_quotainfo;
	struct radix_tree_root	*tree = FUNC4(qi, type);
	struct xfs_dquot	*dqp;
	xfs_dqid_t		id;
	int			error;

	error = FUNC12(mp, type);
	if (error)
		return error;

	FUNC0(FUNC7(ip, XFS_ILOCK_EXCL));
	FUNC0(FUNC6(ip, type) == NULL);

	id = FUNC14(ip, type);

restart:
	dqp = FUNC11(mp, qi, tree, id);
	if (dqp) {
		*O_dqpp = dqp;
		return 0;
	}

	/*
	 * Dquot cache miss. We don't want to keep the inode lock across
	 * a (potential) disk read. Also we don't want to deal with the lock
	 * ordering between quotainode and this inode. OTOH, dropping the inode
	 * lock here means dealing with a chown that can happen before
	 * we re-acquire the lock.
	 */
	FUNC8(ip, XFS_ILOCK_EXCL);
	error = FUNC13(mp, id, type, can_alloc, &dqp);
	FUNC5(ip, XFS_ILOCK_EXCL);
	if (error)
		return error;

	/*
	 * A dquot could be attached to this inode by now, since we had
	 * dropped the ilock.
	 */
	if (FUNC15(mp, type)) {
		struct xfs_dquot	*dqp1;

		dqp1 = FUNC6(ip, type);
		if (dqp1) {
			FUNC9(dqp);
			dqp = dqp1;
			FUNC3(dqp);
			goto dqret;
		}
	} else {
		/* inode stays locked on return */
		FUNC9(dqp);
		return -ESRCH;
	}

	error = FUNC10(mp, qi, tree, id, dqp);
	if (error) {
		/*
		 * Duplicate found. Just throw away the new dquot and start
		 * over.
		 */
		FUNC9(dqp);
		FUNC1(mp, xs_qm_dquot_dups);
		goto restart;
	}

dqret:
	FUNC0(FUNC7(ip, XFS_ILOCK_EXCL));
	FUNC2(dqp);
	*O_dqpp = dqp;
	return 0;
}