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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_nlink; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  ext4_get_block ; 
 int /*<<< orphan*/  ext4_get_block_unwritten ; 
 unsigned int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC15 (struct inode*,struct page*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int*) ; 
 int FUNC23 (struct inode*) ; 
 struct page* FUNC24 (struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 

__attribute__((used)) static int FUNC28(struct address_space *mapping,
					      struct inode *inode,
					      unsigned flags)
{
	int ret, needed_blocks, no_expand;
	handle_t *handle = NULL;
	int retries = 0, sem_held = 0;
	struct page *page = NULL;
	unsigned from, to;
	struct ext4_iloc iloc;

	if (!FUNC10(inode)) {
		/*
		 * clear the flag so that no new write
		 * will trap here again.
		 */
		FUNC6(inode, EXT4_STATE_MAY_INLINE_DATA);
		return 0;
	}

	needed_blocks = FUNC23(inode);

	ret = FUNC9(inode, &iloc);
	if (ret)
		return ret;

retry:
	handle = FUNC11(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		handle = NULL;
		goto out;
	}

	/* We cannot recurse into the filesystem as the transaction is already
	 * started */
	flags |= AOP_FLAG_NOFS;

	page = FUNC24(mapping, 0, flags);
	if (!page) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC21(inode, &no_expand);
	sem_held = 1;
	/* If some one has already done this for us, just exit. */
	if (!FUNC10(inode)) {
		ret = 0;
		goto out;
	}

	from = 0;
	to = FUNC8(inode);
	if (!FUNC2(page)) {
		ret = FUNC15(inode, page);
		if (ret < 0)
			goto out;
	}

	ret = FUNC7(handle, inode);
	if (ret)
		goto out;

	if (FUNC16(inode)) {
		ret = FUNC3(page, from, to,
					  ext4_get_block_unwritten);
	} else
		ret = FUNC3(page, from, to, ext4_get_block);

	if (!ret && FUNC17(inode)) {
		ret = FUNC20(handle, FUNC25(page),
					     from, to, NULL,
					     do_journal_get_write_access);
	}

	if (ret) {
		FUNC27(page);
		FUNC26(page);
		page = NULL;
		FUNC13(handle, inode);
		FUNC22(inode, &no_expand);
		sem_held = 0;
		FUNC12(handle);
		handle = NULL;
		FUNC19(inode);
		/*
		 * If truncate failed early the inode might
		 * still be on the orphan list; we need to
		 * make sure the inode is removed from the
		 * orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC14(NULL, inode);
	}

	if (ret == -ENOSPC && FUNC18(inode->i_sb, &retries))
		goto retry;

	if (page)
		FUNC4(page, from, to);
out:
	if (page) {
		FUNC27(page);
		FUNC26(page);
	}
	if (sem_held)
		FUNC22(inode, &no_expand);
	if (handle)
		FUNC12(handle);
	FUNC5(iloc.bh);
	return ret;
}