#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {unsigned long s_blocksize; } ;
struct page {int dummy; } ;
struct inode {int i_blkbits; int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {scalar_t__ s_journal; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXT4_HT_MOVE_EXTENTS ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct page*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*) ; 
 int FUNC8 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC10 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct super_block*,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct inode*,int,int,int,int,int*) ; 
 int FUNC14 (struct inode*) ; 
 struct inode* FUNC15 (struct file*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int FUNC17 (struct inode*,int,int,int,int*) ; 
 int FUNC18 (struct inode*,struct inode*,int,int,struct page**) ; 
 int FUNC19 (struct page*,int,int) ; 
 struct buffer_head* FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 scalar_t__ FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 

__attribute__((used)) static int
FUNC27(struct file *o_filp, struct inode *donor_inode,
		     pgoff_t orig_page_offset, pgoff_t donor_page_offset,
		     int data_offset_in_page,
		     int block_len_in_page, int unwritten, int *err)
{
	struct inode *orig_inode = FUNC15(o_filp);
	struct page *pagep[2] = {NULL, NULL};
	handle_t *handle;
	ext4_lblk_t orig_blk_offset, donor_blk_offset;
	unsigned long blocksize = orig_inode->i_sb->s_blocksize;
	unsigned int tmp_data_size, data_size, replaced_size;
	int i, err2, jblocks, retries = 0;
	int replaced_count = 0;
	int from = data_offset_in_page << orig_inode->i_blkbits;
	int blocks_per_page = PAGE_SIZE >> orig_inode->i_blkbits;
	struct super_block *sb = orig_inode->i_sb;
	struct buffer_head *bh = NULL;

	/*
	 * It needs twice the amount of ordinary journal buffers because
	 * inode and donor_inode may change each different metadata blocks.
	 */
again:
	*err = 0;
	jblocks = FUNC14(orig_inode) * 2;
	handle = FUNC10(orig_inode, EXT4_HT_MOVE_EXTENTS, jblocks);
	if (FUNC2(handle)) {
		*err = FUNC3(handle);
		return 0;
	}

	orig_blk_offset = orig_page_offset * blocks_per_page +
		data_offset_in_page;

	donor_blk_offset = donor_page_offset * blocks_per_page +
		data_offset_in_page;

	/* Calculate data_size */
	if ((orig_blk_offset + block_len_in_page - 1) ==
	    ((orig_inode->i_size - 1) >> orig_inode->i_blkbits)) {
		/* Replace the last block */
		tmp_data_size = orig_inode->i_size & (blocksize - 1);
		/*
		 * If data_size equal zero, it shows data_size is multiples of
		 * blocksize. So we set appropriate value.
		 */
		if (tmp_data_size == 0)
			tmp_data_size = blocksize;

		data_size = tmp_data_size +
			((block_len_in_page - 1) << orig_inode->i_blkbits);
	} else
		data_size = block_len_in_page << orig_inode->i_blkbits;

	replaced_size = data_size;

	*err = FUNC18(orig_inode, donor_inode, orig_page_offset,
				     donor_page_offset, pagep);
	if (FUNC25(*err < 0))
		goto stop_journal;
	/*
	 * If orig extent was unwritten it can become initialized
	 * at any time after i_data_sem was dropped, in order to
	 * serialize with delalloc we have recheck extent while we
	 * hold page's lock, if it is still the case data copy is not
	 * necessary, just swap data blocks between orig and donor.
	 */
	if (unwritten) {
		FUNC6(orig_inode, donor_inode);
		/* If any of extents in range became initialized we have to
		 * fallback to data copying */
		unwritten = FUNC17(orig_inode, orig_blk_offset,
						block_len_in_page, 1, err);
		if (*err)
			goto drop_data_sem;

		unwritten &= FUNC17(donor_inode, donor_blk_offset,
						 block_len_in_page, 1, err);
		if (*err)
			goto drop_data_sem;

		if (!unwritten) {
			FUNC7(orig_inode, donor_inode);
			goto data_copy;
		}
		if ((FUNC22(pagep[0]) &&
		     !FUNC24(pagep[0], 0)) ||
		    (FUNC22(pagep[1]) &&
		     !FUNC24(pagep[1], 0))) {
			*err = -EBUSY;
			goto drop_data_sem;
		}
		replaced_count = FUNC13(handle, orig_inode,
						   donor_inode, orig_blk_offset,
						   donor_blk_offset,
						   block_len_in_page, 1, err);
	drop_data_sem:
		FUNC7(orig_inode, donor_inode);
		goto unlock_pages;
	}
data_copy:
	*err = FUNC19(pagep[0], from, from + replaced_size);
	if (*err)
		goto unlock_pages;

	/* At this point all buffers in range are uptodate, old mapping layout
	 * is no longer required, try to drop it now. */
	if ((FUNC22(pagep[0]) && !FUNC24(pagep[0], 0)) ||
	    (FUNC22(pagep[1]) && !FUNC24(pagep[1], 0))) {
		*err = -EBUSY;
		goto unlock_pages;
	}
	FUNC6(orig_inode, donor_inode);
	replaced_count = FUNC13(handle, orig_inode, donor_inode,
					       orig_blk_offset, donor_blk_offset,
					   block_len_in_page, 1, err);
	FUNC7(orig_inode, donor_inode);
	if (*err) {
		if (replaced_count) {
			block_len_in_page = replaced_count;
			replaced_size =
				block_len_in_page << orig_inode->i_blkbits;
		} else
			goto unlock_pages;
	}
	/* Perform all necessary steps similar write_begin()/write_end()
	 * but keeping in mind that i_size will not change */
	if (!FUNC21(pagep[0]))
		FUNC5(pagep[0], 1 << orig_inode->i_blkbits, 0);
	bh = FUNC20(pagep[0]);
	for (i = 0; i < data_offset_in_page; i++)
		bh = bh->b_this_page;
	for (i = 0; i < block_len_in_page; i++) {
		*err = FUNC8(orig_inode, orig_blk_offset + i, bh, 0);
		if (*err < 0)
			break;
		bh = bh->b_this_page;
	}
	if (!*err)
		*err = FUNC4(pagep[0], from, from + replaced_size);

	if (FUNC25(*err < 0))
		goto repair_branches;

	/* Even in case of data=writeback it is reasonable to pin
	 * inode to transaction, to prevent unexpected data loss */
	*err = FUNC9(handle, orig_inode,
			(loff_t)orig_page_offset << PAGE_SHIFT, replaced_size);

unlock_pages:
	FUNC26(pagep[0]);
	FUNC23(pagep[0]);
	FUNC26(pagep[1]);
	FUNC23(pagep[1]);
stop_journal:
	FUNC11(handle);
	if (*err == -ENOSPC &&
	    FUNC12(sb, &retries))
		goto again;
	/* Buffer was busy because probably is pinned to journal transaction,
	 * force transaction commit may help to free it. */
	if (*err == -EBUSY && retries++ < 4 && FUNC1(sb)->s_journal &&
	    FUNC16(FUNC1(sb)->s_journal))
		goto again;
	return replaced_count;

repair_branches:
	/*
	 * This should never ever happen!
	 * Extents are swapped already, but we are not able to copy data.
	 * Try to swap extents to it's original places
	 */
	FUNC6(orig_inode, donor_inode);
	replaced_count = FUNC13(handle, donor_inode, orig_inode,
					       orig_blk_offset, donor_blk_offset,
					   block_len_in_page, 0, &err2);
	FUNC7(orig_inode, donor_inode);
	if (replaced_count != block_len_in_page) {
		FUNC0(orig_inode, (sector_t)(orig_blk_offset),
				       "Unable to copy data block,"
				       " data will be lost.");
		*err = -EIO;
	}
	replaced_count = 0;
	goto unlock_pages;
}