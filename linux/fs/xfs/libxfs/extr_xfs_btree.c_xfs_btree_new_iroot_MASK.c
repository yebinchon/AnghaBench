#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union xfs_btree_ptr {int dummy; } xfs_btree_ptr ;
typedef  union xfs_btree_key {int dummy; } xfs_btree_key ;
struct xfs_buf {int /*<<< orphan*/  b_bn; } ;
struct TYPE_11__ {int /*<<< orphan*/  whichfork; int /*<<< orphan*/  ip; } ;
struct TYPE_12__ {TYPE_5__ b; } ;
struct xfs_btree_cur {int bc_flags; int bc_nlevels; int* bc_ptrs; TYPE_6__ bc_private; TYPE_1__* bc_ops; } ;
struct TYPE_9__ {void* bb_blkno; } ;
struct TYPE_8__ {void* bb_blkno; } ;
struct TYPE_10__ {TYPE_3__ s; TYPE_2__ l; } ;
struct xfs_btree_block {int /*<<< orphan*/  bb_numrecs; int /*<<< orphan*/  bb_level; TYPE_4__ bb_u; } ;
struct TYPE_7__ {int (* alloc_block ) (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_BB_ALL_BITS ; 
 int XFS_BTREE_CRC_BLOCKS ; 
 int XFS_BTREE_LONG_PTRS ; 
 int XFS_BTREE_ROOT_IN_INODE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_btree_cur*,int /*<<< orphan*/ ) ; 
 int XFS_ILOG_CORE ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_btree_block*,struct xfs_btree_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  newroot ; 
 int FUNC6 (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_btree_cur*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_btree_cur*,union xfs_btree_key*,union xfs_btree_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int) ; 
 int FUNC10 (struct xfs_btree_cur*,union xfs_btree_ptr*,int,int) ; 
 int FUNC11 (struct xfs_btree_cur*,union xfs_btree_ptr*,struct xfs_btree_block**,struct xfs_buf**) ; 
 struct xfs_btree_block* FUNC12 (struct xfs_btree_cur*) ; 
 int FUNC13 (struct xfs_btree_block*) ; 
 union xfs_btree_key* FUNC14 (struct xfs_btree_cur*,int,struct xfs_btree_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_btree_cur*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_btree_cur*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_btree_cur*,struct xfs_buf*,int,int) ; 
 union xfs_btree_ptr* FUNC18 (struct xfs_btree_cur*,int,struct xfs_btree_block*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_btree_block*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_btree_cur*,int,struct xfs_buf*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC23(
	struct xfs_btree_cur	*cur,		/* btree cursor */
	int			*logflags,	/* logging flags for inode */
	int			*stat)		/* return status - 0 fail */
{
	struct xfs_buf		*cbp;		/* buffer for cblock */
	struct xfs_btree_block	*block;		/* btree block */
	struct xfs_btree_block	*cblock;	/* child btree block */
	union xfs_btree_key	*ckp;		/* child key pointer */
	union xfs_btree_ptr	*cpp;		/* child ptr pointer */
	union xfs_btree_key	*kp;		/* pointer to btree key */
	union xfs_btree_ptr	*pp;		/* pointer to block addr */
	union xfs_btree_ptr	nptr;		/* new block addr */
	int			level;		/* btree level */
	int			error;		/* error return code */
	int			i;		/* loop counter */

	FUNC1(cur, newroot);

	FUNC0(cur->bc_flags & XFS_BTREE_ROOT_IN_INODE);

	level = cur->bc_nlevels - 1;

	block = FUNC12(cur);
	pp = FUNC18(cur, 1, block);

	/* Allocate the new block. If we can't do it, we're toast. Give up. */
	error = cur->bc_ops->alloc_block(cur, pp, &nptr, stat);
	if (error)
		goto error0;
	if (*stat == 0)
		return 0;

	FUNC1(cur, alloc);

	/* Copy the root into a real block. */
	error = FUNC11(cur, &nptr, &cblock, &cbp);
	if (error)
		goto error0;

	/*
	 * we can't just memcpy() the root in for CRC enabled btree blocks.
	 * In that case have to also ensure the blkno remains correct
	 */
	FUNC5(cblock, block, FUNC7(cur));
	if (cur->bc_flags & XFS_BTREE_CRC_BLOCKS) {
		if (cur->bc_flags & XFS_BTREE_LONG_PTRS)
			cblock->bb_u.l.bb_blkno = FUNC4(cbp->b_bn);
		else
			cblock->bb_u.s.bb_blkno = FUNC4(cbp->b_bn);
	}

	FUNC2(&block->bb_level, 1);
	FUNC19(block, 1);
	cur->bc_nlevels++;
	cur->bc_ptrs[level + 1] = 1;

	kp = FUNC14(cur, 1, block);
	ckp = FUNC14(cur, 1, cblock);
	FUNC8(cur, ckp, kp, FUNC13(cblock));

	cpp = FUNC18(cur, 1, cblock);
	for (i = 0; i < FUNC3(cblock->bb_numrecs); i++) {
		error = FUNC10(cur, pp, i, level);
		if (error)
			goto error0;
	}

	FUNC9(cur, cpp, pp, FUNC13(cblock));

	error = FUNC10(cur, &nptr, 0, level);
	if (error)
		goto error0;

	FUNC9(cur, pp, &nptr, 1);

	FUNC22(cur->bc_private.b.ip,
			  1 - FUNC13(cblock),
			  cur->bc_private.b.whichfork);

	FUNC20(cur, level, cbp);

	/*
	 * Do all this logging at the end so that
	 * the root is at the right level.
	 */
	FUNC15(cur, cbp, XFS_BB_ALL_BITS);
	FUNC16(cur, cbp, 1, FUNC3(cblock->bb_numrecs));
	FUNC17(cur, cbp, 1, FUNC3(cblock->bb_numrecs));

	*logflags |=
		XFS_ILOG_CORE | FUNC21(cur->bc_private.b.whichfork);
	*stat = 1;
	return 0;
error0:
	return error;
}