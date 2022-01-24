#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {unsigned long i_size; TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_7__ {int i_flags; } ;
struct TYPE_6__ {unsigned long s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct address_space*,int) ; 
 int i_nopack_mask ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

int FUNC13(struct inode *inode, struct file *filp)
{
	int retval = 0;
	int index;
	struct page *page;
	struct address_space *mapping;
	unsigned long write_from;
	unsigned long blocksize = inode->i_sb->s_blocksize;

	if (inode->i_size == 0) {
		FUNC0(inode)->i_flags |= i_nopack_mask;
		return 0;
	}
	/* ioctl already done */
	if (FUNC0(inode)->i_flags & i_nopack_mask) {
		return 0;
	}

	/* we need to make sure nobody is changing the file size beneath us */
{
	int depth = FUNC11(inode->i_sb);
	FUNC4(inode);
	FUNC9(inode->i_sb, depth);
}

	FUNC8(inode->i_sb);

	write_from = inode->i_size & (blocksize - 1);
	/* if we are on a block boundary, we are already unpacked.  */
	if (write_from == 0) {
		FUNC0(inode)->i_flags |= i_nopack_mask;
		goto out;
	}

	/*
	 * we unpack by finding the page with the tail, and calling
	 * __reiserfs_write_begin on that page.  This will force a
	 * reiserfs_get_block to unpack the tail for us.
	 */
	index = inode->i_size >> PAGE_SHIFT;
	mapping = inode->i_mapping;
	page = FUNC3(mapping, index);
	retval = -ENOMEM;
	if (!page) {
		goto out;
	}
	retval = FUNC1(page, write_from, 0);
	if (retval)
		goto out_unlock;

	/* conversion can change page contents, must flush */
	FUNC2(page);
	retval = FUNC7(NULL, page, write_from, write_from);
	FUNC0(inode)->i_flags |= i_nopack_mask;

out_unlock:
	FUNC12(page);
	FUNC6(page);

out:
	FUNC5(inode);
	FUNC10(inode->i_sb);
	return retval;
}