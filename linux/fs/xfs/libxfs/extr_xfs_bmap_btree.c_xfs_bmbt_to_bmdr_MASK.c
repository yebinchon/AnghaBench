#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ bb_level; int /*<<< orphan*/  bb_numrecs; } ;
typedef  TYPE_3__ xfs_bmdr_block_t ;
typedef  int /*<<< orphan*/  xfs_bmbt_key_t ;
struct TYPE_11__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct TYPE_8__ {scalar_t__ bb_blkno; scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; int /*<<< orphan*/  bb_uuid; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct xfs_btree_block {scalar_t__ bb_magic; scalar_t__ bb_level; int /*<<< orphan*/  bb_numrecs; TYPE_2__ bb_u; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NULLFSBLOCK ; 
 int /*<<< orphan*/ * FUNC1 (struct xfs_mount*,struct xfs_btree_block*,int,int) ; 
 int /*<<< orphan*/  XFS_BMAP_CRC_MAGIC ; 
 int /*<<< orphan*/  XFS_BMAP_MAGIC ; 
 int /*<<< orphan*/ * FUNC2 (struct xfs_mount*,struct xfs_btree_block*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  XFS_BUF_DADDR_NULL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 

void
FUNC12(
	struct xfs_mount	*mp,
	struct xfs_btree_block	*rblock,
	int			rblocklen,
	xfs_bmdr_block_t	*dblock,
	int			dblocklen)
{
	int			dmxr;
	xfs_bmbt_key_t		*fkp;
	__be64			*fpp;
	xfs_bmbt_key_t		*tkp;
	__be64			*tpp;

	if (FUNC11(&mp->m_sb)) {
		FUNC0(rblock->bb_magic == FUNC6(XFS_BMAP_CRC_MAGIC));
		FUNC0(FUNC9(&rblock->bb_u.l.bb_uuid,
		       &mp->m_sb.sb_meta_uuid));
		FUNC0(rblock->bb_u.l.bb_blkno ==
		       FUNC7(XFS_BUF_DADDR_NULL));
	} else
		FUNC0(rblock->bb_magic == FUNC6(XFS_BMAP_MAGIC));
	FUNC0(rblock->bb_u.l.bb_leftsib == FUNC7(NULLFSBLOCK));
	FUNC0(rblock->bb_u.l.bb_rightsib == FUNC7(NULLFSBLOCK));
	FUNC0(rblock->bb_level != 0);
	dblock->bb_level = rblock->bb_level;
	dblock->bb_numrecs = rblock->bb_numrecs;
	dmxr = FUNC10(dblocklen, 0);
	fkp = FUNC2(mp, rblock, 1);
	tkp = FUNC3(dblock, 1);
	fpp = FUNC1(mp, rblock, 1, rblocklen);
	tpp = FUNC4(dblock, 1, dmxr);
	dmxr = FUNC5(dblock->bb_numrecs);
	FUNC8(tkp, fkp, sizeof(*fkp) * dmxr);
	FUNC8(tpp, fpp, sizeof(*fpp) * dmxr);
}