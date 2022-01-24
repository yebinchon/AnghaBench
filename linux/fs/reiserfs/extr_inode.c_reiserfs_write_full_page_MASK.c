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
struct writeback_control {scalar_t__ sync_mode; } ;
struct super_block {int s_blocksize; unsigned long s_blocksize_bits; } ;
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct page {unsigned long index; TYPE_1__* mapping; } ;
struct inode {unsigned long i_size; int i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;
typedef  unsigned long sector_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PF_MEMALLOC ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int FUNC15 (struct inode*) ; 
 int FUNC16 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int FUNC17 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC18 (struct reiserfs_transaction_handle*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int FUNC20 (struct inode*,struct buffer_head*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 struct buffer_head* FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct super_block*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC29 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC33 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC34 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC35 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC36 (struct page*) ; 
 int /*<<< orphan*/  FUNC37 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC38(struct page *page,
				    struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	unsigned long end_index = inode->i_size >> PAGE_SHIFT;
	int error = 0;
	unsigned long block;
	sector_t last_block;
	struct buffer_head *head, *bh;
	int partial = 0;
	int nr = 0;
	int checked = FUNC3(page);
	struct reiserfs_transaction_handle th;
	struct super_block *s = inode->i_sb;
	int bh_per_page = PAGE_SIZE / s->s_blocksize;
	th.t_trans_id = 0;

	/* no logging allowed when nonblocking or from PF_MEMALLOC */
	if (checked && (current->flags & PF_MEMALLOC)) {
		FUNC25(wbc, page);
		FUNC36(page);
		return 0;
	}

	/*
	 * The page dirty bit is cleared before writepage is called, which
	 * means we have to tell create_empty_buffers to make dirty buffers
	 * The page really should be up to date at this point, so tossing
	 * in the BH_Uptodate is just a sanity check.
	 */
	if (!FUNC23(page)) {
		FUNC12(page, s->s_blocksize,
				     (1 << BH_Dirty) | (1 << BH_Uptodate));
	}
	head = FUNC22(page);

	/*
	 * last page in the file, zero out any contents past the
	 * last byte in the file
	 */
	if (page->index >= end_index) {
		unsigned last_offset;

		last_offset = inode->i_size & (PAGE_SIZE - 1);
		/* no file contents in this page */
		if (page->index >= end_index + 1 || !last_offset) {
			FUNC36(page);
			return 0;
		}
		FUNC37(page, last_offset, PAGE_SIZE);
	}
	bh = head;
	block = page->index << (PAGE_SHIFT - s->s_blocksize_bits);
	last_block = (FUNC15(inode) - 1) >> inode->i_blkbits;
	/* first map all the buffers, logging any direct items we find */
	do {
		if (block > last_block) {
			/*
			 * This can happen when the block size is less than
			 * the page size.  The corresponding bytes in the page
			 * were zero filled above
			 */
			FUNC11(bh);
			FUNC30(bh);
		} else if ((checked || FUNC8(bh)) &&
		           (!FUNC9(bh) || (FUNC9(bh)
						       && bh->b_blocknr ==
						       0))) {
			/*
			 * not mapped yet, or it points to a direct item, search
			 * the btree for the mapping info, and log any direct
			 * items found
			 */
			if ((error = FUNC20(inode, bh, block))) {
				goto fail;
			}
		}
		bh = bh->b_this_page;
		block++;
	} while (bh != head);

	/*
	 * we start the transaction after map_block_for_writepage,
	 * because it can create holes in the file (an unbounded operation).
	 * starting it here, we can make a reliable estimate for how many
	 * blocks we're going to log
	 */
	if (checked) {
		FUNC1(page);
		FUNC28(s);
		error = FUNC16(&th, s, bh_per_page + 1);
		if (error) {
			FUNC29(s);
			goto fail;
		}
		FUNC27(inode);
	}
	/* now go through and lock any dirty buffers on the page */
	do {
		FUNC14(bh);
		if (!FUNC9(bh))
			continue;
		if (FUNC9(bh) && bh->b_blocknr == 0)
			continue;

		if (checked) {
			FUNC26(s, bh, 1);
			FUNC18(&th, bh);
			continue;
		}
		/*
		 * from this point on, we know the buffer is mapped to a
		 * real block and not a direct item
		 */
		if (wbc->sync_mode != WB_SYNC_NONE) {
			FUNC19(bh);
		} else {
			if (!FUNC34(bh)) {
				FUNC25(wbc, page);
				continue;
			}
		}
		if (FUNC33(bh)) {
			FUNC21(bh);
		} else {
			FUNC35(bh);
		}
	} while ((bh = bh->b_this_page) != head);

	if (checked) {
		error = FUNC17(&th);
		FUNC29(s);
		if (error)
			goto fail;
	}
	FUNC0(FUNC4(page));
	FUNC31(page);
	FUNC36(page);

	/*
	 * since any buffer might be the only dirty buffer on the page,
	 * the first submit_bh can bring the page out of writeback.
	 * be careful with the buffers.
	 */
	do {
		struct buffer_head *next = bh->b_this_page;
		if (FUNC7(bh)) {
			FUNC32(REQ_OP_WRITE, 0, bh);
			nr++;
		}
		FUNC24(bh);
		bh = next;
	} while (bh != head);

	error = 0;
done:
	if (nr == 0) {
		/*
		 * if this page only had a direct item, it is very possible for
		 * no io to be required without there being an error.  Or,
		 * someone else could have locked them and sent them down the
		 * pipe without locking the page
		 */
		bh = head;
		do {
			if (!FUNC10(bh)) {
				partial = 1;
				break;
			}
			bh = bh->b_this_page;
		} while (bh != head);
		if (!partial)
			FUNC6(page);
		FUNC13(page);
	}
	return error;

fail:
	/*
	 * catches various errors, we need to make sure any valid dirty blocks
	 * get to the media.  The page is currently locked and not marked for
	 * writeback
	 */
	FUNC2(page);
	bh = head;
	do {
		FUNC14(bh);
		if (FUNC9(bh) && FUNC8(bh) && bh->b_blocknr) {
			FUNC19(bh);
			FUNC21(bh);
		} else {
			/*
			 * clear any dirty bits that might have come from
			 * getting attached to a dirty page
			 */
			FUNC11(bh);
		}
		bh = bh->b_this_page;
	} while (bh != head);
	FUNC5(page);
	FUNC0(FUNC4(page));
	FUNC31(page);
	FUNC36(page);
	do {
		struct buffer_head *next = bh->b_this_page;
		if (FUNC7(bh)) {
			FUNC11(bh);
			FUNC32(REQ_OP_WRITE, 0, bh);
			nr++;
		}
		FUNC24(bh);
		bh = next;
	} while (bh != head);
	goto done;
}