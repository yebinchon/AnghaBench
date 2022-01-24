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
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_inode {TYPE_1__* d_ops; struct xfs_mount* i_mount; } ;
struct xfs_da_node_entry {int /*<<< orphan*/  before; int /*<<< orphan*/  hashval; } ;
struct xfs_da_intnode {int /*<<< orphan*/  blkno; } ;
struct xfs_da_args {TYPE_2__* geo; int /*<<< orphan*/  trans; struct xfs_inode* dp; } ;
struct xfs_da3_icnode_hdr {int count; } ;
struct xfs_da3_blkinfo {int /*<<< orphan*/  blkno; } ;
struct xfs_buf {struct xfs_da_intnode* b_addr; int /*<<< orphan*/  b_bn; int /*<<< orphan*/  b_ops; } ;
struct xfs_attr_leafblock {int /*<<< orphan*/  blkno; } ;
struct xfs_attr_leaf_entry {int /*<<< orphan*/  hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
struct TYPE_4__ {scalar_t__ blksize; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* node_hdr_to_disk ) (struct xfs_da_intnode*,struct xfs_da3_icnode_hdr*) ;struct xfs_da_node_entry* (* node_tree_p ) (struct xfs_da_intnode*) ;int /*<<< orphan*/  (* node_hdr_from_disk ) (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 int /*<<< orphan*/  XFS_BLFT_ATTR_LEAF_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_intnode*,struct xfs_da_intnode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ; 
 struct xfs_da_node_entry* FUNC4 (struct xfs_da_intnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_da_intnode*,struct xfs_da3_icnode_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_da_args*) ; 
 struct xfs_attr_leaf_entry* FUNC7 (struct xfs_da_intnode*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct xfs_attr3_icleaf_hdr*,struct xfs_da_intnode*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**) ; 
 int FUNC10 (struct xfs_da_args*,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xfs_da_args*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC16(
	struct xfs_da_args	*args)
{
	struct xfs_attr_leafblock *leaf;
	struct xfs_attr3_icleaf_hdr icleafhdr;
	struct xfs_attr_leaf_entry *entries;
	struct xfs_da_node_entry *btree;
	struct xfs_da3_icnode_hdr icnodehdr;
	struct xfs_da_intnode	*node;
	struct xfs_inode	*dp = args->dp;
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_buf		*bp1 = NULL;
	struct xfs_buf		*bp2 = NULL;
	xfs_dablk_t		blkno;
	int			error;

	FUNC6(args);

	error = FUNC12(args, &blkno);
	if (error)
		goto out;
	error = FUNC9(args->trans, dp, 0, -1, &bp1);
	if (error)
		goto out;

	error = FUNC11(args->trans, dp, blkno, -1, &bp2, XFS_ATTR_FORK);
	if (error)
		goto out;

	/* copy leaf to new buffer, update identifiers */
	FUNC14(args->trans, bp2, XFS_BLFT_ATTR_LEAF_BUF);
	bp2->b_ops = bp1->b_ops;
	FUNC2(bp2->b_addr, bp1->b_addr, args->geo->blksize);
	if (FUNC13(&mp->m_sb)) {
		struct xfs_da3_blkinfo *hdr3 = bp2->b_addr;
		hdr3->blkno = FUNC1(bp2->b_bn);
	}
	FUNC15(args->trans, bp2, 0, args->geo->blksize - 1);

	/*
	 * Set up the new root node.
	 */
	error = FUNC10(args, 0, 1, &bp1, XFS_ATTR_FORK);
	if (error)
		goto out;
	node = bp1->b_addr;
	dp->d_ops->node_hdr_from_disk(&icnodehdr, node);
	btree = dp->d_ops->node_tree_p(node);

	leaf = bp2->b_addr;
	FUNC8(args->geo, &icleafhdr, leaf);
	entries = FUNC7(leaf);

	/* both on-disk, don't endian-flip twice */
	btree[0].hashval = entries[icleafhdr.count - 1].hashval;
	btree[0].before = FUNC0(blkno);
	icnodehdr.count = 1;
	dp->d_ops->node_hdr_to_disk(node, &icnodehdr);
	FUNC15(args->trans, bp1, 0, args->geo->blksize - 1);
	error = 0;
out:
	return error;
}