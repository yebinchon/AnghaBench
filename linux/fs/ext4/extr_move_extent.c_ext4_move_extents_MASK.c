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
struct inode {int i_blkbits; scalar_t__ i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {size_t p_depth; struct ext4_extent* p_ext; } ;
typedef  int pgoff_t ;
typedef  int ext4_lblk_t ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_ext_path*) ; 
 int FUNC7 (struct ext4_extent*) ; 
 int FUNC8 (struct ext4_extent*) ; 
 int FUNC9 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 struct inode* FUNC12 (struct file*) ; 
 int FUNC13 (struct inode*,int,struct ext4_ext_path**) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct ext4_ext_path*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct inode*) ; 
 int FUNC18 (struct inode*,struct inode*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (struct file*,struct inode*,int,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct inode*) ; 

int
FUNC21(struct file *o_filp, struct file *d_filp, __u64 orig_blk,
		  __u64 donor_blk, __u64 len, __u64 *moved_len)
{
	struct inode *orig_inode = FUNC12(o_filp);
	struct inode *donor_inode = FUNC12(d_filp);
	struct ext4_ext_path *path = NULL;
	int blocks_per_page = PAGE_SIZE >> orig_inode->i_blkbits;
	ext4_lblk_t o_end, o_start = orig_blk;
	ext4_lblk_t d_start = donor_blk;
	int ret;

	if (orig_inode->i_sb != donor_inode->i_sb) {
		FUNC2("ext4 move extent: The argument files "
			"should be in same FS [ino:orig %lu, donor %lu]\n",
			orig_inode->i_ino, donor_inode->i_ino);
		return -EINVAL;
	}

	/* orig and donor should be different inodes */
	if (orig_inode == donor_inode) {
		FUNC2("ext4 move extent: The argument files should not "
			"be same inode [ino:orig %lu, donor %lu]\n",
			orig_inode->i_ino, donor_inode->i_ino);
		return -EINVAL;
	}

	/* Regular file check */
	if (!FUNC1(orig_inode->i_mode) || !FUNC1(donor_inode->i_mode)) {
		FUNC2("ext4 move extent: The argument files should be "
			"regular file [ino:orig %lu, donor %lu]\n",
			orig_inode->i_ino, donor_inode->i_ino);
		return -EINVAL;
	}

	/* TODO: it's not obvious how to swap blocks for inodes with full
	   journaling enabled */
	if (FUNC11(orig_inode) ||
	    FUNC11(donor_inode)) {
		FUNC10(orig_inode->i_sb, KERN_ERR,
			 "Online defrag not supported with data journaling");
		return -EOPNOTSUPP;
	}

	if (FUNC0(orig_inode) || FUNC0(donor_inode)) {
		FUNC10(orig_inode->i_sb, KERN_ERR,
			 "Online defrag not supported for encrypted files");
		return -EOPNOTSUPP;
	}

	/* Protect orig and donor inodes against a truncate */
	FUNC17(orig_inode, donor_inode);

	/* Wait for all existing dio workers */
	FUNC14(orig_inode);
	FUNC14(donor_inode);

	/* Protect extent tree against block allocations via delalloc */
	FUNC4(orig_inode, donor_inode);
	/* Check the filesystem environment whether move_extent can be done */
	ret = FUNC18(orig_inode, donor_inode, orig_blk,
				    donor_blk, &len);
	if (ret)
		goto out;
	o_end = o_start + len;

	while (o_start < o_end) {
		struct ext4_extent *ex;
		ext4_lblk_t cur_blk, next_blk;
		pgoff_t orig_page_index, donor_page_index;
		int offset_in_page;
		int unwritten, cur_len;

		ret = FUNC13(orig_inode, o_start, &path);
		if (ret)
			goto out;
		ex = path[path->p_depth].p_ext;
		next_blk = FUNC9(path);
		cur_blk = FUNC16(ex->ee_block);
		cur_len = FUNC7(ex);
		/* Check hole before the start pos */
		if (cur_blk + cur_len - 1 < o_start) {
			if (next_blk == EXT_MAX_BLOCKS) {
				o_start = o_end;
				ret = -ENODATA;
				goto out;
			}
			d_start += next_blk - o_start;
			o_start = next_blk;
			continue;
		/* Check hole after the start pos */
		} else if (cur_blk > o_start) {
			/* Skip hole */
			d_start += cur_blk - o_start;
			o_start = cur_blk;
			/* Extent inside requested range ?*/
			if (cur_blk >= o_end)
				goto out;
		} else { /* in_range(o_start, o_blk, o_len) */
			cur_len += cur_blk - o_start;
		}
		unwritten = FUNC8(ex);
		if (o_end - o_start < cur_len)
			cur_len = o_end - o_start;

		orig_page_index = o_start >> (PAGE_SHIFT -
					       orig_inode->i_blkbits);
		donor_page_index = d_start >> (PAGE_SHIFT -
					       donor_inode->i_blkbits);
		offset_in_page = o_start % blocks_per_page;
		if (cur_len > blocks_per_page- offset_in_page)
			cur_len = blocks_per_page - offset_in_page;
		/*
		 * Up semaphore to avoid following problems:
		 * a. transaction deadlock among ext4_journal_start,
		 *    ->write_begin via pagefault, and jbd2_journal_commit
		 * b. racing with ->readpage, ->write_begin, and ext4_get_block
		 *    in move_extent_per_page
		 */
		FUNC5(orig_inode, donor_inode);
		/* Swap original branches with new branches */
		FUNC19(o_filp, donor_inode,
				     orig_page_index, donor_page_index,
				     offset_in_page, cur_len,
				     unwritten, &ret);
		FUNC4(orig_inode, donor_inode);
		if (ret < 0)
			break;
		o_start += cur_len;
		d_start += cur_len;
	}
	*moved_len = o_start - orig_blk;
	if (*moved_len > len)
		*moved_len = len;

out:
	if (*moved_len) {
		FUNC3(orig_inode);
		FUNC3(donor_inode);
	}

	FUNC6(path);
	FUNC15(path);
	FUNC5(orig_inode, donor_inode);
	FUNC20(orig_inode, donor_inode);

	return ret;
}