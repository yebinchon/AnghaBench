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
struct xfs_trans {int dummy; } ;
struct TYPE_4__ {scalar_t__ di_nextents; scalar_t__ di_anextents; scalar_t__ di_size; scalar_t__ di_nblocks; void* di_aformat; void* di_format; scalar_t__ di_forkoff; scalar_t__ di_dmevmask; scalar_t__ di_flags2; scalar_t__ di_flags; } ;
struct xfs_inode {TYPE_2__* i_itemp; TYPE_1__ i_d; int /*<<< orphan*/  i_ino; } ;
struct xfs_icluster {scalar_t__ deleted; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {scalar_t__ i_nlink; int /*<<< orphan*/  i_generation; scalar_t__ i_mode; } ;
struct TYPE_5__ {int ili_fields; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 void* XFS_DINODE_FMT_EXTENTS ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int XFS_ILOG_AOWNER ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int XFS_ILOG_DOWNER ; 
 int FUNC3 (struct xfs_trans*,int /*<<< orphan*/ ,struct xfs_icluster*) ; 
 int FUNC4 (struct xfs_inode*,struct xfs_trans*,struct xfs_icluster*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_trans*,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC9(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip)
{
	int			error;
	struct xfs_icluster	xic = { 0 };

	FUNC0(FUNC6(ip, XFS_ILOCK_EXCL));
	FUNC0(FUNC2(ip)->i_nlink == 0);
	FUNC0(ip->i_d.di_nextents == 0);
	FUNC0(ip->i_d.di_anextents == 0);
	FUNC0(ip->i_d.di_size == 0 || !FUNC1(FUNC2(ip)->i_mode));
	FUNC0(ip->i_d.di_nblocks == 0);

	/*
	 * Pull the on-disk inode from the AGI unlinked list.
	 */
	error = FUNC7(tp, ip);
	if (error)
		return error;

	error = FUNC3(tp, ip->i_ino, &xic);
	if (error)
		return error;

	FUNC5(ip, XFS_DATA_FORK);
	FUNC5(ip, XFS_ATTR_FORK);

	FUNC2(ip)->i_mode = 0;		/* mark incore inode as free */
	ip->i_d.di_flags = 0;
	ip->i_d.di_flags2 = 0;
	ip->i_d.di_dmevmask = 0;
	ip->i_d.di_forkoff = 0;		/* mark the attr fork not in use */
	ip->i_d.di_format = XFS_DINODE_FMT_EXTENTS;
	ip->i_d.di_aformat = XFS_DINODE_FMT_EXTENTS;

	/* Don't attempt to replay owner changes for a deleted inode */
	ip->i_itemp->ili_fields &= ~(XFS_ILOG_AOWNER|XFS_ILOG_DOWNER);

	/*
	 * Bump the generation count so no one will be confused
	 * by reincarnations of this inode.
	 */
	FUNC2(ip)->i_generation++;
	FUNC8(tp, ip, XFS_ILOG_CORE);

	if (xic.deleted)
		error = FUNC4(ip, tp, &xic);

	return error;
}