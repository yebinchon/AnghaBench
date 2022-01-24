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
struct page {struct address_space* mapping; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int pgoff_t ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FALL_BACK_TO_NONDELALLOC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int PAGE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_da_get_block_prep ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,unsigned int,unsigned int) ; 
 int FUNC7 (struct address_space*,struct inode*,unsigned int,unsigned int,unsigned int,struct page**,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int FUNC16 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**) ; 
 struct page* FUNC17 (struct address_space*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 

__attribute__((used)) static int FUNC24(struct file *file, struct address_space *mapping,
			       loff_t pos, unsigned len, unsigned flags,
			       struct page **pagep, void **fsdata)
{
	int ret, retries = 0;
	struct page *page;
	pgoff_t index;
	struct inode *inode = mapping->host;
	handle_t *handle;

	if (FUNC21(FUNC8(FUNC0(inode->i_sb))))
		return -EIO;

	index = pos >> PAGE_SHIFT;

	if (FUNC11(inode->i_sb) || FUNC3(inode->i_mode) ||
	    FUNC15(inode)) {
		*fsdata = (void *)FALL_BACK_TO_NONDELALLOC;
		return FUNC16(file, mapping, pos,
					len, flags, pagep, fsdata);
	}
	*fsdata = (void *)0;
	FUNC20(inode, pos, len, flags);

	if (FUNC13(inode, EXT4_STATE_MAY_INLINE_DATA)) {
		ret = FUNC7(mapping, inode,
						      pos, len, flags,
						      pagep, fsdata);
		if (ret < 0)
			return ret;
		if (ret == 1)
			return 0;
	}

	/*
	 * grab_cache_page_write_begin() can take a long time if the
	 * system is thrashing due to memory pressure, or if the page
	 * is being written back.  So grab it first before we start
	 * the transaction handle.  This also allows us to allocate
	 * the page (if needed) without using GFP_NOFS.
	 */
retry_grab:
	page = FUNC17(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	FUNC22(page);

	/*
	 * With delayed allocation, we don't log the i_disksize update
	 * if there is delayed block allocation. But we still need
	 * to journalling the i_disksize update if writes to the end
	 * of file which has an already mapped buffer.
	 */
retry_journal:
	handle = FUNC9(inode, EXT4_HT_WRITE_PAGE,
				FUNC6(inode, pos, len));
	if (FUNC1(handle)) {
		FUNC19(page);
		return FUNC2(handle);
	}

	FUNC18(page);
	if (page->mapping != mapping) {
		/* The page got truncated from under us */
		FUNC22(page);
		FUNC19(page);
		FUNC10(handle);
		goto retry_grab;
	}
	/* In case writeback began while the page was unlocked */
	FUNC23(page);

#ifdef CONFIG_FS_ENCRYPTION
	ret = ext4_block_write_begin(page, pos, len,
				     ext4_da_get_block_prep);
#else
	ret = FUNC4(page, pos, len, ext4_da_get_block_prep);
#endif
	if (ret < 0) {
		FUNC22(page);
		FUNC10(handle);
		/*
		 * block_write_begin may have instantiated a few blocks
		 * outside i_size.  Trim these off again. Don't need
		 * i_size_read because we hold i_mutex.
		 */
		if (pos + len > inode->i_size)
			FUNC14(inode);

		if (ret == -ENOSPC &&
		    FUNC12(inode->i_sb, &retries))
			goto retry_journal;

		FUNC19(page);
		return ret;
	}

	*pagep = page;
	return ret;
}