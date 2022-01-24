#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bb_numrecs; int /*<<< orphan*/  bb_level; } ;
typedef  TYPE_1__ xfs_bmdr_block_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_key_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
struct xfs_btree_block {int /*<<< orphan*/  bb_numrecs; int /*<<< orphan*/  bb_level; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct xfs_mount*,struct xfs_btree_block*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xfs_mount*,struct xfs_btree_block*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  XFS_BTNUM_BMAP ; 
 int /*<<< orphan*/  XFS_BTREE_LONG_PTRS ; 
 int /*<<< orphan*/  XFS_BUF_DADDR_NULL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*,struct xfs_btree_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(
	struct xfs_inode	*ip,
	xfs_bmdr_block_t	*dblock,
	int			dblocklen,
	struct xfs_btree_block	*rblock,
	int			rblocklen)
{
	struct xfs_mount	*mp = ip->i_mount;
	int			dmxr;
	xfs_bmbt_key_t		*fkp;
	__be64			*fpp;
	xfs_bmbt_key_t		*tkp;
	__be64			*tpp;

	FUNC8(mp, rblock, XFS_BUF_DADDR_NULL,
				 XFS_BTNUM_BMAP, 0, 0, ip->i_ino,
				 XFS_BTREE_LONG_PTRS);
	rblock->bb_level = dblock->bb_level;
	FUNC0(FUNC5(rblock->bb_level) > 0);
	rblock->bb_numrecs = dblock->bb_numrecs;
	dmxr = FUNC7(dblocklen, 0);
	fkp = FUNC3(dblock, 1);
	tkp = FUNC2(mp, rblock, 1);
	fpp = FUNC4(dblock, 1, dmxr);
	tpp = FUNC1(mp, rblock, 1, rblocklen);
	dmxr = FUNC5(dblock->bb_numrecs);
	FUNC6(tkp, fkp, sizeof(*fkp) * dmxr);
	FUNC6(tpp, fpp, sizeof(*fpp) * dmxr);
}