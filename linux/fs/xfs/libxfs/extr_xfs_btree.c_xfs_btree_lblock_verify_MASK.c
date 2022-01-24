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
struct xfs_mount {int dummy; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;
struct TYPE_3__ {scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; } ;
struct TYPE_4__ {TYPE_1__ l; } ;
struct xfs_btree_block {TYPE_2__ bb_u; int /*<<< orphan*/  bb_numrecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLFSBLOCK ; 
 struct xfs_btree_block* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/ * __this_address ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

xfs_failaddr_t
FUNC5(
	struct xfs_buf		*bp,
	unsigned int		max_recs)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_btree_block	*block = FUNC0(bp);

	/* numrecs verification */
	if (FUNC1(block->bb_numrecs) > max_recs)
		return __this_address;

	/* sibling pointer verification */
	if (block->bb_u.l.bb_leftsib != FUNC3(NULLFSBLOCK) &&
	    !FUNC4(mp, FUNC2(block->bb_u.l.bb_leftsib)))
		return __this_address;
	if (block->bb_u.l.bb_rightsib != FUNC3(NULLFSBLOCK) &&
	    !FUNC4(mp, FUNC2(block->bb_u.l.bb_rightsib)))
		return __this_address;

	return NULL;
}