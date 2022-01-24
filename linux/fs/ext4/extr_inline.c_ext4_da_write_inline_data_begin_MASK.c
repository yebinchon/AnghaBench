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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct address_space*,struct inode*,unsigned int,void**) ; 
 int FUNC7 (struct inode*,struct ext4_iloc*) ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,unsigned int) ; 
 int FUNC14 (struct inode*,struct page*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int*) ; 
 struct page* FUNC16 (struct address_space*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct address_space *mapping,
				    struct inode *inode,
				    loff_t pos, unsigned len,
				    unsigned flags,
				    struct page **pagep,
				    void **fsdata)
{
	int ret, inline_size;
	handle_t *handle;
	struct page *page;
	struct ext4_iloc iloc;
	int retries = 0;

	ret = FUNC7(inode, &iloc);
	if (ret)
		return ret;

retry_journal:
	handle = FUNC11(inode, EXT4_HT_INODE, 1);
	if (FUNC1(handle)) {
		ret = FUNC2(handle);
		goto out;
	}

	inline_size = FUNC8(inode);

	ret = -ENOSPC;
	if (inline_size >= pos + len) {
		ret = FUNC13(handle, inode, pos + len);
		if (ret && ret != -ENOSPC)
			goto out_journal;
	}

	/*
	 * We cannot recurse into the filesystem as the transaction
	 * is already started.
	 */
	flags |= AOP_FLAG_NOFS;

	if (ret == -ENOSPC) {
		FUNC12(handle);
		ret = FUNC6(mapping,
							    inode,
							    flags,
							    fsdata);
		if (ret == -ENOSPC &&
		    FUNC15(inode->i_sb, &retries))
			goto retry_journal;
		goto out;
	}

	page = FUNC16(mapping, 0, flags);
	if (!page) {
		ret = -ENOMEM;
		goto out_journal;
	}

	FUNC5(&FUNC0(inode)->xattr_sem);
	if (!FUNC9(inode)) {
		ret = 0;
		goto out_release_page;
	}

	if (!FUNC3(page)) {
		ret = FUNC14(inode, page);
		if (ret < 0)
			goto out_release_page;
	}
	ret = FUNC10(handle, iloc.bh);
	if (ret)
		goto out_release_page;

	FUNC19(&FUNC0(inode)->xattr_sem);
	*pagep = page;
	FUNC4(iloc.bh);
	return 1;
out_release_page:
	FUNC19(&FUNC0(inode)->xattr_sem);
	FUNC18(page);
	FUNC17(page);
out_journal:
	FUNC12(handle);
out:
	FUNC4(iloc.bh);
	return ret;
}