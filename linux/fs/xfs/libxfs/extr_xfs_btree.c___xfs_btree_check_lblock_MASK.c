#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
typedef  int /*<<< orphan*/  xfs_btnum_t ;
struct TYPE_8__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct xfs_buf {int /*<<< orphan*/  b_bn; } ;
struct xfs_btree_cur {TYPE_1__* bc_ops; int /*<<< orphan*/  bc_btnum; struct xfs_mount* bc_mp; } ;
struct TYPE_6__ {scalar_t__ bb_blkno; scalar_t__ bb_pad; scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; int /*<<< orphan*/  bb_uuid; } ;
struct TYPE_7__ {TYPE_2__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; int /*<<< orphan*/  bb_numrecs; int /*<<< orphan*/  bb_level; int /*<<< orphan*/  bb_magic; } ;
struct TYPE_5__ {int (* get_maxrecs ) (struct xfs_btree_cur*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NULLFSBLOCK ; 
 int /*<<< orphan*/  XFS_BUF_DADDR_NULL ; 
 int /*<<< orphan*/ * __this_address ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_btree_cur*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*) ; 

xfs_failaddr_t
FUNC10(
	struct xfs_btree_cur	*cur,
	struct xfs_btree_block	*block,
	int			level,
	struct xfs_buf		*bp)
{
	struct xfs_mount	*mp = cur->bc_mp;
	xfs_btnum_t		btnum = cur->bc_btnum;
	int			crc = FUNC9(&mp->m_sb);

	if (crc) {
		if (!FUNC6(&block->bb_u.l.bb_uuid, &mp->m_sb.sb_meta_uuid))
			return __this_address;
		if (block->bb_u.l.bb_blkno !=
		    FUNC4(bp ? bp->b_bn : XFS_BUF_DADDR_NULL))
			return __this_address;
		if (block->bb_u.l.bb_pad != FUNC3(0))
			return __this_address;
	}

	if (FUNC1(block->bb_magic) != FUNC8(crc, btnum))
		return __this_address;
	if (FUNC0(block->bb_level) != level)
		return __this_address;
	if (FUNC0(block->bb_numrecs) >
	    cur->bc_ops->get_maxrecs(cur, level))
		return __this_address;
	if (block->bb_u.l.bb_leftsib != FUNC4(NULLFSBLOCK) &&
	    !FUNC7(cur, FUNC2(block->bb_u.l.bb_leftsib),
			level + 1))
		return __this_address;
	if (block->bb_u.l.bb_rightsib != FUNC4(NULLFSBLOCK) &&
	    !FUNC7(cur, FUNC2(block->bb_u.l.bb_rightsib),
			level + 1))
		return __this_address;

	return NULL;
}