#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;
struct TYPE_3__ {scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct xfs_btree_block {TYPE_2__ bb_u; int /*<<< orphan*/  bb_numrecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLAGBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 struct xfs_btree_block* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/ * __this_address ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

xfs_failaddr_t
FUNC7(
	struct xfs_buf		*bp,
	unsigned int		max_recs)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_btree_block	*block = FUNC1(bp);
	xfs_agblock_t		agno;

	/* numrecs verification */
	if (FUNC2(block->bb_numrecs) > max_recs)
		return __this_address;

	/* sibling pointer verification */
	agno = FUNC5(mp, FUNC0(bp));
	if (block->bb_u.s.bb_leftsib != FUNC4(NULLAGBLOCK) &&
	    !FUNC6(mp, agno, FUNC3(block->bb_u.s.bb_leftsib)))
		return __this_address;
	if (block->bb_u.s.bb_rightsib != FUNC4(NULLAGBLOCK) &&
	    !FUNC6(mp, agno, FUNC3(block->bb_u.s.bb_rightsib)))
		return __this_address;

	return NULL;
}