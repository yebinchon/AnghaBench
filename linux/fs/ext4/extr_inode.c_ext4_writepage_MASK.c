#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {unsigned int index; TYPE_1__* mapping; } ;
struct inode {TYPE_3__* i_sb; } ;
struct ext4_io_submit {int /*<<< orphan*/  io_end; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_6__ {unsigned int s_blocksize; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int PF_KSWAPD ; 
 int PF_MEMALLOC ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct page*,unsigned int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  ext4_bh_delay_or_unwritten ; 
 int FUNC4 (struct ext4_io_submit*,struct page*,unsigned int,struct writeback_control*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_io_submit*) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_io_submit*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct inode*) ; 
 struct buffer_head* FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

__attribute__((used)) static int FUNC20(struct page *page,
			  struct writeback_control *wbc)
{
	int ret = 0;
	loff_t size;
	unsigned int len;
	struct buffer_head *page_bufs = NULL;
	struct inode *inode = page->mapping->host;
	struct ext4_io_submit io_submit;
	bool keep_towrite = false;

	if (FUNC18(FUNC5(FUNC0(inode->i_sb)))) {
		FUNC7(page, 0, PAGE_SIZE);
		FUNC19(page);
		return -EIO;
	}

	FUNC17(page);
	size = FUNC14(inode);
	if (page->index == size >> PAGE_SHIFT &&
	    !FUNC12(inode))
		len = size & ~PAGE_MASK;
	else
		len = PAGE_SIZE;

	page_bufs = FUNC15(page);
	/*
	 * We cannot do block allocation or other extent handling in this
	 * function. If there are buffers needing that, we have to redirty
	 * the page. But we may reach here when we do a journal commit via
	 * journal_submit_inode_data_buffers() and in that case we must write
	 * allocated buffers to achieve data=ordered mode guarantees.
	 *
	 * Also, if there is only one buffer per page (the fs block
	 * size == the page size), if one buffer needs block
	 * allocation or needs to modify the extent tree to clear the
	 * unwritten flag, we know that the page can't be written at
	 * all, so we might as well refuse the write immediately.
	 * Unfortunately if the block size != page size, we can't as
	 * easily detect this case using ext4_walk_page_buffers(), but
	 * for the extremely common case, this is an optimization that
	 * skips a useless round trip through ext4_bio_write_page().
	 */
	if (FUNC13(NULL, page_bufs, 0, len, NULL,
				   ext4_bh_delay_or_unwritten)) {
		FUNC16(wbc, page);
		if ((current->flags & PF_MEMALLOC) ||
		    (inode->i_sb->s_blocksize == PAGE_SIZE)) {
			/*
			 * For memory cleaning there's no point in writing only
			 * some buffers. So just bail out. Warn if we came here
			 * from direct reclaim.
			 */
			FUNC2((current->flags & (PF_MEMALLOC|PF_KSWAPD))
							== PF_MEMALLOC);
			FUNC19(page);
			return 0;
		}
		keep_towrite = true;
	}

	if (FUNC1(page) && FUNC11(inode))
		/*
		 * It's mmapped pagecache.  Add buffers and journal it.  There
		 * doesn't seem much point in redirtying the page here.
		 */
		return FUNC3(page, len);

	FUNC9(&io_submit, wbc);
	io_submit.io_end = FUNC6(inode, GFP_NOFS);
	if (!io_submit.io_end) {
		FUNC16(wbc, page);
		FUNC19(page);
		return -ENOMEM;
	}
	ret = FUNC4(&io_submit, page, len, wbc, keep_towrite);
	FUNC8(&io_submit);
	/* Drop io_end reference we got from init */
	FUNC10(io_submit.io_end);
	return ret;
}