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
struct xfs_rmap_rec {scalar_t__ rm_offset; void* rm_owner; void* rm_blockcount; void* rm_startblock; } ;
struct TYPE_2__ {int sb_logblocks; int /*<<< orphan*/  sb_logstart; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_block {int /*<<< orphan*/  bb_numrecs; } ;
struct aghdr_init_data {int /*<<< orphan*/  agno; } ;

/* Variables and functions */
 int FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_BTNUM_RMAP ; 
 struct xfs_btree_block* FUNC1 (struct xfs_buf*) ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_mount*) ; 
 int FUNC4 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_AG ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_FS ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_INOBT ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_LOG ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_REFC ; 
 struct xfs_rmap_rec* FUNC5 (struct xfs_btree_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct xfs_mount*,struct aghdr_init_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_mount*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_mount*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC14(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	struct aghdr_init_data	*id)
{
	struct xfs_btree_block	*block = FUNC1(bp);
	struct xfs_rmap_rec	*rrec;

	FUNC11(mp, bp, XFS_BTNUM_RMAP, 0, 4, id->agno);

	/*
	 * mark the AG header regions as static metadata The BNO
	 * btree block is the first block after the headers, so
	 * it's location defines the size of region the static
	 * metadata consumes.
	 *
	 * Note: unlike mkfs, we never have to account for log
	 * space when growing the data regions
	 */
	rrec = FUNC5(block, 1);
	rrec->rm_startblock = 0;
	rrec->rm_blockcount = FUNC8(FUNC0(mp));
	rrec->rm_owner = FUNC9(XFS_RMAP_OWN_FS);
	rrec->rm_offset = 0;

	/* account freespace btree root blocks */
	rrec = FUNC5(block, 2);
	rrec->rm_startblock = FUNC8(FUNC0(mp));
	rrec->rm_blockcount = FUNC8(2);
	rrec->rm_owner = FUNC9(XFS_RMAP_OWN_AG);
	rrec->rm_offset = 0;

	/* account inode btree root blocks */
	rrec = FUNC5(block, 3);
	rrec->rm_startblock = FUNC8(FUNC3(mp));
	rrec->rm_blockcount = FUNC8(FUNC4(mp) -
					  FUNC3(mp));
	rrec->rm_owner = FUNC9(XFS_RMAP_OWN_INOBT);
	rrec->rm_offset = 0;

	/* account for rmap btree root */
	rrec = FUNC5(block, 4);
	rrec->rm_startblock = FUNC8(FUNC4(mp));
	rrec->rm_blockcount = FUNC8(1);
	rrec->rm_owner = FUNC9(XFS_RMAP_OWN_AG);
	rrec->rm_offset = 0;

	/* account for refc btree root */
	if (FUNC13(&mp->m_sb)) {
		rrec = FUNC5(block, 5);
		rrec->rm_startblock = FUNC8(FUNC12(mp));
		rrec->rm_blockcount = FUNC8(1);
		rrec->rm_owner = FUNC9(XFS_RMAP_OWN_REFC);
		rrec->rm_offset = 0;
		FUNC6(&block->bb_numrecs, 1);
	}

	/* account for the log space */
	if (FUNC10(mp, id)) {
		rrec = FUNC5(block,
				FUNC7(block->bb_numrecs) + 1);
		rrec->rm_startblock = FUNC8(
				FUNC2(mp, mp->m_sb.sb_logstart));
		rrec->rm_blockcount = FUNC8(mp->m_sb.sb_logblocks);
		rrec->rm_owner = FUNC9(XFS_RMAP_OWN_LOG);
		rrec->rm_offset = 0;
		FUNC6(&block->bb_numrecs, 1);
	}
}