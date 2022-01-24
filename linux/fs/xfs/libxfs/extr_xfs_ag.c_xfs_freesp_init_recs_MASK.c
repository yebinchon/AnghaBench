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
typedef  scalar_t__ xfs_agblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  sb_logblocks; int /*<<< orphan*/  sb_logstart; } ;
struct xfs_mount {scalar_t__ m_ag_prealloc_blocks; TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_block {scalar_t__ bb_numrecs; } ;
struct xfs_alloc_rec {void* ar_blockcount; void* ar_startblock; } ;
struct aghdr_init_data {scalar_t__ agsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xfs_alloc_rec* FUNC1 (struct xfs_mount*,struct xfs_btree_block*,int) ; 
 struct xfs_btree_block* FUNC2 (struct xfs_buf*) ; 
 scalar_t__ FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*) ; 
 void* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct xfs_mount*,struct aghdr_init_data*) ; 

__attribute__((used)) static void
FUNC9(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	struct aghdr_init_data	*id)
{
	struct xfs_alloc_rec	*arec;
	struct xfs_btree_block	*block = FUNC2(bp);

	arec = FUNC1(mp, FUNC2(bp), 1);
	arec->ar_startblock = FUNC7(mp->m_ag_prealloc_blocks);

	if (FUNC8(mp, id)) {
		struct xfs_alloc_rec	*nrec;
		xfs_agblock_t		start = FUNC3(mp,
							mp->m_sb.sb_logstart);

		FUNC0(start >= mp->m_ag_prealloc_blocks);
		if (start != mp->m_ag_prealloc_blocks) {
			/*
			 * Modify first record to pad stripe align of log
			 */
			arec->ar_blockcount = FUNC7(start -
						mp->m_ag_prealloc_blocks);
			nrec = arec + 1;

			/*
			 * Insert second record at start of internal log
			 * which then gets trimmed.
			 */
			nrec->ar_startblock = FUNC7(
					FUNC6(arec->ar_startblock) +
					FUNC6(arec->ar_blockcount));
			arec = nrec;
			FUNC4(&block->bb_numrecs, 1);
		}
		/*
		 * Change record start to after the internal log
		 */
		FUNC5(&arec->ar_startblock, mp->m_sb.sb_logblocks);
	}

	/*
	 * Calculate the record block count and check for the case where
	 * the log might have consumed all available space in the AG. If
	 * so, reset the record count to 0 to avoid exposure of an invalid
	 * record start block.
	 */
	arec->ar_blockcount = FUNC7(id->agsize -
					  FUNC6(arec->ar_startblock));
	if (!arec->ar_blockcount)
		block->bb_numrecs = 0;
}