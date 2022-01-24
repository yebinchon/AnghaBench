#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bpr_ptr; } ;
struct nilfs_btree_path {int bp_index; TYPE_1__ bp_newreq; struct buffer_head* bp_sib_bh; void* bp_op; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap_stats {scalar_t__ bs_nblocks; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int NILFS_BTREE_LEVEL_DATA ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*,TYPE_1__*,struct inode*) ; 
 struct inode* FUNC3 (struct nilfs_bmap*) ; 
 int FUNC4 (struct nilfs_bmap*,TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* nilfs_btree_carry_left ; 
 void* nilfs_btree_carry_right ; 
 void* nilfs_btree_do_insert ; 
 scalar_t__ FUNC6 (struct nilfs_bmap*,struct nilfs_btree_path*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nilfs_bmap*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC8 (struct nilfs_bmap*,scalar_t__,struct buffer_head**) ; 
 struct nilfs_btree_node* FUNC9 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ; 
 struct nilfs_btree_node* FUNC10 (struct nilfs_btree_path*,int) ; 
 struct nilfs_btree_node* FUNC11 (struct nilfs_bmap*) ; 
 void* nilfs_btree_grow ; 
 int FUNC12 (struct nilfs_bmap*) ; 
 int FUNC13 (struct nilfs_bmap*) ; 
 int FUNC14 (struct nilfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct nilfs_btree_node*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nilfs_btree_node*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* nilfs_btree_split ; 

__attribute__((used)) static int FUNC17(struct nilfs_bmap *btree,
				      struct nilfs_btree_path *path,
				      int *levelp, __u64 key, __u64 ptr,
				      struct nilfs_bmap_stats *stats)
{
	struct buffer_head *bh;
	struct nilfs_btree_node *node, *parent, *sib;
	__u64 sibptr;
	int pindex, level, ncmax, ncblk, ret;
	struct inode *dat = NULL;

	stats->bs_nblocks = 0;
	level = NILFS_BTREE_LEVEL_DATA;

	/* allocate a new ptr for data block */
	if (FUNC0(btree)) {
		path[level].bp_newreq.bpr_ptr =
			FUNC6(btree, path, key);
		dat = FUNC3(btree);
	}

	ret = FUNC4(btree, &path[level].bp_newreq, dat);
	if (ret < 0)
		goto err_out_data;

	ncblk = FUNC13(btree);

	for (level = NILFS_BTREE_LEVEL_NODE_MIN;
	     level < FUNC12(btree) - 1;
	     level++) {
		node = FUNC10(path, level);
		if (FUNC14(node) < ncblk) {
			path[level].bp_op = nilfs_btree_do_insert;
			stats->bs_nblocks++;
			goto out;
		}

		parent = FUNC9(btree, path, level + 1, &ncmax);
		pindex = path[level + 1].bp_index;

		/* left sibling */
		if (pindex > 0) {
			sibptr = FUNC15(parent, pindex - 1,
							  ncmax);
			ret = FUNC7(btree, sibptr, &bh);
			if (ret < 0)
				goto err_out_child_node;
			sib = (struct nilfs_btree_node *)bh->b_data;
			if (FUNC14(sib) < ncblk) {
				path[level].bp_sib_bh = bh;
				path[level].bp_op = nilfs_btree_carry_left;
				stats->bs_nblocks++;
				goto out;
			} else {
				FUNC1(bh);
			}
		}

		/* right sibling */
		if (pindex < FUNC14(parent) - 1) {
			sibptr = FUNC15(parent, pindex + 1,
							  ncmax);
			ret = FUNC7(btree, sibptr, &bh);
			if (ret < 0)
				goto err_out_child_node;
			sib = (struct nilfs_btree_node *)bh->b_data;
			if (FUNC14(sib) < ncblk) {
				path[level].bp_sib_bh = bh;
				path[level].bp_op = nilfs_btree_carry_right;
				stats->bs_nblocks++;
				goto out;
			} else {
				FUNC1(bh);
			}
		}

		/* split */
		path[level].bp_newreq.bpr_ptr =
			path[level - 1].bp_newreq.bpr_ptr + 1;
		ret = FUNC4(btree,
						   &path[level].bp_newreq, dat);
		if (ret < 0)
			goto err_out_child_node;
		ret = FUNC8(btree,
						path[level].bp_newreq.bpr_ptr,
						&bh);
		if (ret < 0)
			goto err_out_curr_node;

		stats->bs_nblocks++;

		sib = (struct nilfs_btree_node *)bh->b_data;
		FUNC16(sib, 0, level, 0, ncblk, NULL, NULL);
		path[level].bp_sib_bh = bh;
		path[level].bp_op = nilfs_btree_split;
	}

	/* root */
	node = FUNC11(btree);
	if (FUNC14(node) <
	    NILFS_BTREE_ROOT_NCHILDREN_MAX) {
		path[level].bp_op = nilfs_btree_do_insert;
		stats->bs_nblocks++;
		goto out;
	}

	/* grow */
	path[level].bp_newreq.bpr_ptr = path[level - 1].bp_newreq.bpr_ptr + 1;
	ret = FUNC4(btree, &path[level].bp_newreq, dat);
	if (ret < 0)
		goto err_out_child_node;
	ret = FUNC8(btree, path[level].bp_newreq.bpr_ptr,
					&bh);
	if (ret < 0)
		goto err_out_curr_node;

	FUNC16((struct nilfs_btree_node *)bh->b_data,
			      0, level, 0, ncblk, NULL, NULL);
	path[level].bp_sib_bh = bh;
	path[level].bp_op = nilfs_btree_grow;

	level++;
	path[level].bp_op = nilfs_btree_do_insert;

	/* a newly-created node block and a data block are added */
	stats->bs_nblocks += 2;

	/* success */
 out:
	*levelp = level;
	return ret;

	/* error */
 err_out_curr_node:
	FUNC2(btree, &path[level].bp_newreq, dat);
 err_out_child_node:
	for (level--; level > NILFS_BTREE_LEVEL_DATA; level--) {
		FUNC5(path[level].bp_sib_bh);
		FUNC2(btree, &path[level].bp_newreq, dat);

	}

	FUNC2(btree, &path[level].bp_newreq, dat);
 err_out_data:
	*levelp = level;
	stats->bs_nblocks = 0;
	return ret;
}