#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct partial_cluster {scalar_t__ state; scalar_t__ lblk; void* pclu; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int s_cluster_ratio; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_maxdepth; int p_depth; TYPE_1__* p_hdr; struct ext4_ext_path* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int p_maxdepth; int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
typedef  struct ext4_ext_path handle_t ;
typedef  int ext4_lblk_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_6__ {scalar_t__ eh_entries; int /*<<< orphan*/  eh_max; scalar_t__ eh_depth; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 void* FUNC0 (struct ext4_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  EXT4_EX_NOCACHE ; 
 int EXT4_FREE_BLOCKS_RERESERVE_CLUSTER ; 
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 struct ext4_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC6 (struct ext4_ext_path*) ; 
 int FUNC7 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct inode*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_ext_path*) ; 
 int FUNC15 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ; 
 int FUNC16 (struct ext4_extent*) ; 
 scalar_t__ FUNC17 (struct ext4_ext_path*) ; 
 int FUNC18 (struct ext4_extent*) ; 
 int FUNC19 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int) ; 
 int FUNC20 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,struct partial_cluster*,int,int) ; 
 int FUNC21 (struct inode*,struct ext4_ext_path*,int*,int*,struct ext4_extent**) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int /*<<< orphan*/ ) ; 
 struct ext4_ext_path* FUNC23 (struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path**,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ext4_ext_path*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (struct inode*,scalar_t__) ; 
 struct ext4_ext_path* FUNC28 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,scalar_t__) ; 
 TYPE_1__* FUNC31 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC32 (char*,...) ; 
 int FUNC33 (struct inode*) ; 
 TYPE_1__* FUNC34 (struct inode*) ; 
 int FUNC35 (struct inode*) ; 
 scalar_t__ initial ; 
 struct ext4_ext_path* FUNC36 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct ext4_ext_path*) ; 
 void* FUNC38 (scalar_t__) ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct ext4_ext_path*,int /*<<< orphan*/ ,int) ; 
 void* nofree ; 
 struct ext4_ext_path* FUNC41 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ tofree ; 
 int /*<<< orphan*/  FUNC42 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC43 (struct inode*,int,int,int,struct partial_cluster*,scalar_t__) ; 

int FUNC44(struct inode *inode, ext4_lblk_t start,
			  ext4_lblk_t end)
{
	struct ext4_sb_info *sbi = FUNC3(inode->i_sb);
	int depth = FUNC33(inode);
	struct ext4_ext_path *path = NULL;
	struct partial_cluster partial;
	handle_t *handle;
	int i = 0, err = 0;

	partial.pclu = 0;
	partial.lblk = 0;
	partial.state = initial;

	FUNC32("truncate since %u to %u\n", start, end);

	/* probably first extent we're gonna free will be last in block */
	handle = FUNC28(inode, EXT4_HT_TRUNCATE, depth + 1);
	if (FUNC6(handle))
		return FUNC7(handle);

again:
	FUNC42(inode, start, end, depth);

	/*
	 * Check if we are removing extents inside the extent tree. If that
	 * is the case, we are going to punch a hole inside the extent tree
	 * so we have to check whether we need to split the extent covering
	 * the last block to remove so we can easily remove the part of it
	 * in ext4_ext_rm_leaf().
	 */
	if (end < EXT_MAX_BLOCKS - 1) {
		struct ext4_extent *ex;
		ext4_lblk_t ee_block, ex_end, lblk;
		ext4_fsblk_t pblk;

		/* find extent for or closest extent to this block */
		path = FUNC23(inode, end, NULL, EXT4_EX_NOCACHE);
		if (FUNC6(path)) {
			FUNC29(handle);
			return FUNC7(path);
		}
		depth = FUNC33(inode);
		/* Leaf not may not exist only if inode has no blocks at all */
		ex = path[depth].p_ext;
		if (!ex) {
			if (depth) {
				FUNC2(inode,
						 "path[%d].p_hdr == NULL",
						 depth);
				err = -EFSCORRUPTED;
			}
			goto out;
		}

		ee_block = FUNC39(ex->ee_block);
		ex_end = ee_block + FUNC16(ex) - 1;

		/*
		 * See if the last block is inside the extent, if so split
		 * the extent at 'end' block so we can easily remove the
		 * tail of the first part of the split extent in
		 * ext4_ext_rm_leaf().
		 */
		if (end >= ee_block && end < ex_end) {

			/*
			 * If we're going to split the extent, note that
			 * the cluster containing the block after 'end' is
			 * in use to avoid freeing it when removing blocks.
			 */
			if (sbi->s_cluster_ratio > 1) {
				pblk = FUNC18(ex) + end - ee_block + 2;
				partial.pclu = FUNC0(sbi, pblk);
				partial.state = nofree;
			}

			/*
			 * Split the extent in two so that 'end' is the last
			 * block in the first new extent. Also we should not
			 * fail removing space due to ENOSPC so try to use
			 * reserved block if that happens.
			 */
			err = FUNC24(handle, inode, &path,
							 end + 1, 1);
			if (err < 0)
				goto out;

		} else if (sbi->s_cluster_ratio > 1 && end >= ex_end &&
			   partial.state == initial) {
			/*
			 * If we're punching, there's an extent to the right.
			 * If the partial cluster hasn't been set, set it to
			 * that extent's first cluster and its state to nofree
			 * so it won't be freed should it contain blocks to be
			 * removed. If it's already set (tofree/nofree), we're
			 * retrying and keep the original partial cluster info
			 * so a cluster marked tofree as a result of earlier
			 * extent removal is not lost.
			 */
			lblk = ex_end + 1;
			err = FUNC21(inode, path, &lblk, &pblk,
						    &ex);
			if (err)
				goto out;
			if (pblk) {
				partial.pclu = FUNC0(sbi, pblk);
				partial.state = nofree;
			}
		}
	}
	/*
	 * We start scanning from right side, freeing all the blocks
	 * after i_size and walking into the tree depth-wise.
	 */
	depth = FUNC33(inode);
	if (path) {
		int k = i = depth;
		while (--k > 0)
			path[k].p_block =
				FUNC38(path[k].p_hdr->eh_entries)+1;
	} else {
		path = FUNC36(depth + 1, sizeof(struct ext4_ext_path),
			       GFP_NOFS);
		if (path == NULL) {
			FUNC29(handle);
			return -ENOMEM;
		}
		path[0].p_maxdepth = path[0].p_depth = depth;
		path[0].p_hdr = FUNC34(inode);
		i = 0;

		if (FUNC12(inode, path[0].p_hdr, depth, 0)) {
			err = -EFSCORRUPTED;
			goto out;
		}
	}
	err = 0;

	while (i >= 0 && err == 0) {
		if (i == depth) {
			/* this is leaf block */
			err = FUNC20(handle, inode, path,
					       &partial, start, end);
			/* root level has p_bh == NULL, brelse() eats this */
			FUNC9(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			continue;
		}

		/* this is index block */
		if (!path[i].p_hdr) {
			FUNC32("initialize header\n");
			path[i].p_hdr = FUNC31(path[i].p_bh);
		}

		if (!path[i].p_idx) {
			/* this level hasn't been touched yet */
			path[i].p_idx = FUNC5(path[i].p_hdr);
			path[i].p_block = FUNC38(path[i].p_hdr->eh_entries)+1;
			FUNC32("init index ptr: hdr 0x%p, num %d\n",
				  path[i].p_hdr,
				  FUNC38(path[i].p_hdr->eh_entries));
		} else {
			/* we were already here, see at next index */
			path[i].p_idx--;
		}

		FUNC32("level %d - index, first 0x%p, cur 0x%p\n",
				i, FUNC4(path[i].p_hdr),
				path[i].p_idx);
		if (FUNC17(path + i)) {
			struct buffer_head *bh;
			/* go to the next level */
			FUNC32("move to level %d (block %llu)\n",
				  i + 1, FUNC26(path[i].p_idx));
			FUNC40(path + i + 1, 0, sizeof(*path));
			bh = FUNC41(inode,
				FUNC26(path[i].p_idx), depth - i - 1,
				EXT4_EX_NOCACHE);
			if (FUNC6(bh)) {
				/* should we reset i_size? */
				err = FUNC7(bh);
				break;
			}
			/* Yield here to deal with large extent trees.
			 * Should be a no-op if we did IO above. */
			FUNC10();
			if (FUNC8(i + 1 > depth)) {
				err = -EFSCORRUPTED;
				break;
			}
			path[i + 1].p_bh = bh;

			/* save actual number of indexes since this
			 * number is changed at the next iteration */
			path[i].p_block = FUNC38(path[i].p_hdr->eh_entries);
			i++;
		} else {
			/* we finished processing this index, go up */
			if (path[i].p_hdr->eh_entries == 0 && i > 0) {
				/* index is empty, remove it;
				 * handle must be already prepared by the
				 * truncatei_leaf() */
				err = FUNC19(handle, inode, path, i);
			}
			/* root level has p_bh == NULL, brelse() eats this */
			FUNC9(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			FUNC32("return to level %d\n", i);
		}
	}

	FUNC43(inode, start, end, depth, &partial,
					 path->p_hdr->eh_entries);

	/*
	 * if there's a partial cluster and we have removed the first extent
	 * in the file, then we also free the partial cluster, if any
	 */
	if (partial.state == tofree && err == 0) {
		int flags = FUNC35(inode);

		if (FUNC27(inode, partial.lblk))
			flags |= EXT4_FREE_BLOCKS_RERESERVE_CLUSTER;
		FUNC25(handle, inode, NULL,
				 FUNC1(sbi, partial.pclu),
				 sbi->s_cluster_ratio, flags);
		if (flags & EXT4_FREE_BLOCKS_RERESERVE_CLUSTER)
			FUNC30(inode, partial.lblk);
		partial.state = initial;
	}

	/* TODO: flexible tree reduction should be here */
	if (path->p_hdr->eh_entries == 0) {
		/*
		 * truncate to zero freed all the tree,
		 * so we need to correct eh_depth
		 */
		err = FUNC15(handle, inode, path);
		if (err == 0) {
			FUNC34(inode)->eh_depth = 0;
			FUNC34(inode)->eh_max =
				FUNC11(FUNC22(inode, 0));
			err = FUNC13(handle, inode, path);
		}
	}
out:
	FUNC14(path);
	FUNC37(path);
	path = NULL;
	if (err == -EAGAIN)
		goto again;
	FUNC29(handle);

	return err;
}