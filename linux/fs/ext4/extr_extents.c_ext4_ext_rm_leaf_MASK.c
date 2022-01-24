#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct partial_cluster {scalar_t__ pclu; scalar_t__ state; int /*<<< orphan*/  lblk; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int s_cluster_ratio; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; int /*<<< orphan*/  ee_len; } ;
struct ext4_ext_path {int /*<<< orphan*/ * p_bh; struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned short ext4_lblk_t ;
typedef  unsigned short ext4_fsblk_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 scalar_t__ FUNC0 (struct ext4_sb_info*,unsigned short) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,char*,unsigned short,...) ; 
 int EXT4_FREE_BLOCKS_RERESERVE_CLUSTER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC6 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC7 (struct ext4_extent_header*) ; 
 int EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned short FUNC12 (struct ext4_extent*) ; 
 scalar_t__ FUNC13 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_extent*) ; 
 unsigned short FUNC15 (struct ext4_extent*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct inode*,struct ext4_extent*,struct partial_cluster*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int /*<<< orphan*/ ) ; 
 struct ext4_extent_header* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,unsigned short,unsigned int,...) ; 
 int FUNC25 (struct inode*) ; 
 int FUNC26 (struct inode*) ; 
 scalar_t__ initial ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__*,int) ; 
 unsigned short FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct ext4_extent*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ext4_extent*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nofree ; 
 scalar_t__ tofree ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,unsigned short,struct ext4_extent*,struct partial_cluster*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC33(handle_t *handle, struct inode *inode,
		 struct ext4_ext_path *path,
		 struct partial_cluster *partial,
		 ext4_lblk_t start, ext4_lblk_t end)
{
	struct ext4_sb_info *sbi = FUNC5(inode->i_sb);
	int err = 0, correct_index = 0;
	int depth = FUNC25(inode), credits;
	struct ext4_extent_header *eh;
	ext4_lblk_t a, b;
	unsigned num;
	ext4_lblk_t ex_ee_block;
	unsigned short ex_ee_len;
	unsigned unwritten = 0;
	struct ext4_extent *ex;
	ext4_fsblk_t pblk;

	/* the header must be checked already in ext4_ext_remove_space() */
	FUNC24("truncate since %u in leaf to %u\n", start, end);
	if (!path[depth].p_hdr)
		path[depth].p_hdr = FUNC23(path[depth].p_bh);
	eh = path[depth].p_hdr;
	if (FUNC32(path[depth].p_hdr == NULL)) {
		FUNC3(inode, "path[%d].p_hdr == NULL", depth);
		return -EFSCORRUPTED;
	}
	/* find where to start removing */
	ex = path[depth].p_ext;
	if (!ex)
		ex = FUNC7(eh);

	ex_ee_block = FUNC28(ex->ee_block);
	ex_ee_len = FUNC12(ex);

	FUNC31(inode, start, ex, partial);

	while (ex >= FUNC6(eh) &&
			ex_ee_block + ex_ee_len > start) {

		if (FUNC13(ex))
			unwritten = 1;
		else
			unwritten = 0;

		FUNC24("remove ext %u:[%d]%d\n", ex_ee_block,
			  unwritten, ex_ee_len);
		path[depth].p_ext = ex;

		a = ex_ee_block > start ? ex_ee_block : start;
		b = ex_ee_block+ex_ee_len - 1 < end ?
			ex_ee_block+ex_ee_len - 1 : end;

		FUNC24("  border %u:%u\n", a, b);

		/* If this extent is beyond the end of the hole, skip it */
		if (end < ex_ee_block) {
			/*
			 * We're going to skip this extent and move to another,
			 * so note that its first cluster is in use to avoid
			 * freeing it when removing blocks.  Eventually, the
			 * right edge of the truncated/punched region will
			 * be just to the left.
			 */
			if (sbi->s_cluster_ratio > 1) {
				pblk = FUNC15(ex);
				partial->pclu = FUNC0(sbi, pblk);
				partial->state = nofree;
			}
			ex--;
			ex_ee_block = FUNC28(ex->ee_block);
			ex_ee_len = FUNC12(ex);
			continue;
		} else if (b != ex_ee_block + ex_ee_len - 1) {
			FUNC3(inode,
					 "can not handle truncate %u:%u "
					 "on extent %u:%u",
					 start, end, ex_ee_block,
					 ex_ee_block + ex_ee_len - 1);
			err = -EFSCORRUPTED;
			goto out;
		} else if (a != ex_ee_block) {
			/* remove tail of the extent */
			num = a - ex_ee_block;
		} else {
			/* remove whole extent: excellent! */
			num = 0;
		}
		/*
		 * 3 for leaf, sb, and inode plus 2 (bmap and group
		 * descriptor) for each block group; assume two block
		 * groups plus ex_ee_len/blocks_per_block_group for
		 * the worst case
		 */
		credits = 7 + 2*(ex_ee_len/FUNC1(inode->i_sb));
		if (ex == FUNC6(eh)) {
			correct_index = 1;
			credits += (FUNC25(inode)) + 1;
		}
		credits += FUNC4(inode->i_sb);

		err = FUNC18(handle, inode, credits);
		if (err)
			goto out;

		err = FUNC11(handle, inode, path + depth);
		if (err)
			goto out;

		err = FUNC21(handle, inode, ex, partial, a, b);
		if (err)
			goto out;

		if (num == 0)
			/* this extent is removed; mark slot entirely unused */
			FUNC17(ex, 0);

		ex->ee_len = FUNC8(num);
		/*
		 * Do not mark unwritten if all the blocks in the
		 * extent have been removed.
		 */
		if (unwritten && num)
			FUNC14(ex);
		/*
		 * If the extent was completely released,
		 * we need to remove it from the leaf
		 */
		if (num == 0) {
			if (end != EXT_MAX_BLOCKS - 1) {
				/*
				 * For hole punching, we need to scoot all the
				 * extents up when an extent is removed so that
				 * we dont have blank extents in the middle
				 */
				FUNC29(ex, ex+1, (FUNC7(eh) - ex) *
					sizeof(struct ext4_extent));

				/* Now get rid of the one at the end */
				FUNC30(FUNC7(eh), 0,
					sizeof(struct ext4_extent));
			}
			FUNC27(&eh->eh_entries, -1);
		}

		err = FUNC10(handle, inode, path + depth);
		if (err)
			goto out;

		FUNC24("new extent: %u:%u:%llu\n", ex_ee_block, num,
				FUNC15(ex));
		ex--;
		ex_ee_block = FUNC28(ex->ee_block);
		ex_ee_len = FUNC12(ex);
	}

	if (correct_index && eh->eh_entries)
		err = FUNC9(handle, inode, path);

	/*
	 * If there's a partial cluster and at least one extent remains in
	 * the leaf, free the partial cluster if it isn't shared with the
	 * current extent.  If it is shared with the current extent
	 * we reset the partial cluster because we've reached the start of the
	 * truncated/punched region and we're done removing blocks.
	 */
	if (partial->state == tofree && ex >= FUNC6(eh)) {
		pblk = FUNC15(ex) + ex_ee_len - 1;
		if (partial->pclu != FUNC0(sbi, pblk)) {
			int flags = FUNC26(inode);

			if (FUNC20(inode, partial->lblk))
				flags |= EXT4_FREE_BLOCKS_RERESERVE_CLUSTER;
			FUNC19(handle, inode, NULL,
					 FUNC2(sbi, partial->pclu),
					 sbi->s_cluster_ratio, flags);
			if (flags & EXT4_FREE_BLOCKS_RERESERVE_CLUSTER)
				FUNC22(inode, partial->lblk);
		}
		partial->state = initial;
	}

	/* if this leaf is free, then we should
	 * remove it from index block above */
	if (err == 0 && eh->eh_entries == 0 && path[depth].p_bh != NULL)
		err = FUNC16(handle, inode, path, depth);

out:
	return err;
}