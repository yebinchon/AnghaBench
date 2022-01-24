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
struct inode {int i_size; int /*<<< orphan*/  i_sb; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct page*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int FUNC4 (struct page*,int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_get_block ; 
 int /*<<< orphan*/  ext4_get_block_unwritten ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int FUNC16 (struct address_space*,struct inode*,int,unsigned int,unsigned int,struct page**) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*) ; 
 struct page* FUNC20 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 

__attribute__((used)) static int FUNC28(struct file *file, struct address_space *mapping,
			    loff_t pos, unsigned len, unsigned flags,
			    struct page **pagep, void **fsdata)
{
	struct inode *inode = mapping->host;
	int ret, needed_blocks;
	handle_t *handle;
	int retries = 0;
	struct page *page;
	pgoff_t index;
	unsigned from, to;

	if (FUNC25(FUNC6(FUNC0(inode->i_sb))))
		return -EIO;

	FUNC24(inode, pos, len, flags);
	/*
	 * Reserve one block more for addition to orphan list in case
	 * we allocate blocks but write fails for some reason
	 */
	needed_blocks = FUNC19(inode) + 1;
	index = pos >> PAGE_SHIFT;
	from = pos & (PAGE_SIZE - 1);
	to = from + len;

	if (FUNC14(inode, EXT4_STATE_MAY_INLINE_DATA)) {
		ret = FUNC16(mapping, inode, pos, len,
						    flags, pagep);
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
	page = FUNC20(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	FUNC26(page);

retry_journal:
	handle = FUNC7(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
	if (FUNC1(handle)) {
		FUNC23(page);
		return FUNC2(handle);
	}

	FUNC21(page);
	if (page->mapping != mapping) {
		/* The page got truncated from under us */
		FUNC26(page);
		FUNC23(page);
		FUNC8(handle);
		goto retry_grab;
	}
	/* In case writeback began while the page was unlocked */
	FUNC27(page);

#ifdef CONFIG_FS_ENCRYPTION
	if (ext4_should_dioread_nolock(inode))
		ret = ext4_block_write_begin(page, pos, len,
					     ext4_get_block_unwritten);
	else
		ret = ext4_block_write_begin(page, pos, len,
					     ext4_get_block);
#else
	if (FUNC11(inode))
		ret = FUNC3(page, pos, len,
					  ext4_get_block_unwritten);
	else
		ret = FUNC3(page, pos, len, ext4_get_block);
#endif
	if (!ret && FUNC12(inode)) {
		ret = FUNC18(handle, FUNC22(page),
					     from, to, NULL,
					     do_journal_get_write_access);
	}

	if (ret) {
		bool extended = (pos + len > inode->i_size) &&
				!FUNC17(inode);

		FUNC26(page);
		/*
		 * __block_write_begin may have instantiated a few blocks
		 * outside i_size.  Trim these off again. Don't need
		 * i_size_read because we hold i_mutex.
		 *
		 * Add inode to orphan list in case we crash before
		 * truncate finishes
		 */
		if (extended && FUNC5(inode))
			FUNC9(handle, inode);

		FUNC8(handle);
		if (extended) {
			FUNC15(inode);
			/*
			 * If truncate failed early the inode might
			 * still be on the orphan list; we need to
			 * make sure the inode is removed from the
			 * orphan list in that case.
			 */
			if (inode->i_nlink)
				FUNC10(NULL, inode);
		}

		if (ret == -ENOSPC &&
		    FUNC13(inode->i_sb, &retries))
			goto retry_journal;
		FUNC23(page);
		return ret;
	}
	*pagep = page;
	return ret;
}