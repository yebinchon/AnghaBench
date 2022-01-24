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
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  scalar_t__ xfs_filblks_t ;
typedef  scalar_t__ xfs_extnum_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_agblocks; int /*<<< orphan*/  sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_ifork {int if_flags; int /*<<< orphan*/  if_broot_bytes; struct xfs_btree_block* if_broot; } ;
struct xfs_btree_block {int /*<<< orphan*/  bb_level; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  NULLFSBLOCK ; 
 int /*<<< orphan*/ * FUNC1 (struct xfs_mount*,struct xfs_btree_block*,int,int /*<<< orphan*/ ) ; 
#define  XFS_DINODE_FMT_BTREE 129 
#define  XFS_DINODE_FMT_EXTENTS 128 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_IFEXTENTS ; 
 int FUNC5 (struct xfs_inode*,int) ; 
 struct xfs_ifork* FUNC6 (struct xfs_inode*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct xfs_ifork*,scalar_t__*) ; 
 int FUNC10 (struct xfs_mount*,struct xfs_trans*,struct xfs_ifork*,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int FUNC11 (struct xfs_trans*,struct xfs_inode*,int) ; 

int
FUNC12(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip,
	int			whichfork,
	xfs_extnum_t		*nextents,
	xfs_filblks_t		*count)
{
	struct xfs_mount	*mp;	/* file system mount structure */
	__be64			*pp;	/* pointer to block address */
	struct xfs_btree_block	*block;	/* current btree block */
	struct xfs_ifork	*ifp;	/* fork structure */
	xfs_fsblock_t		bno;	/* block # of "block" */
	int			level;	/* btree level, for checking */
	int			error;

	bno = NULLFSBLOCK;
	mp = ip->i_mount;
	*nextents = 0;
	*count = 0;
	ifp = FUNC6(ip, whichfork);
	if (!ifp)
		return 0;

	switch (FUNC5(ip, whichfork)) {
	case XFS_DINODE_FMT_EXTENTS:
		*nextents = FUNC9(ifp, count);
		return 0;
	case XFS_DINODE_FMT_BTREE:
		if (!(ifp->if_flags & XFS_IFEXTENTS)) {
			error = FUNC11(tp, ip, whichfork);
			if (error)
				return error;
		}

		/*
		 * Root level must use BMAP_BROOT_PTR_ADDR macro to get ptr out.
		 */
		block = ifp->if_broot;
		level = FUNC7(block->bb_level);
		FUNC0(level > 0);
		pp = FUNC1(mp, block, 1, ifp->if_broot_bytes);
		bno = FUNC8(*pp);
		FUNC0(bno != NULLFSBLOCK);
		FUNC0(FUNC4(mp, bno) < mp->m_sb.sb_agcount);
		FUNC0(FUNC3(mp, bno) < mp->m_sb.sb_agblocks);

		error = FUNC10(mp, tp, ifp, bno, level,
				nextents, count);
		if (error) {
			FUNC2("xfs_bmap_count_blocks(2)",
					XFS_ERRLEVEL_LOW, mp);
			return -EFSCORRUPTED;
		}
		return 0;
	}

	return 0;
}