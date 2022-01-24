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
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 struct page* FUNC17 (struct address_space*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC21 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 struct buffer_head* FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC30(handle_t *handle,
		struct address_space *mapping, loff_t from, loff_t length)
{
	ext4_fsblk_t index = from >> PAGE_SHIFT;
	unsigned offset = from & (PAGE_SIZE-1);
	unsigned blocksize, pos;
	ext4_lblk_t iblock;
	struct inode *inode = mapping->host;
	struct buffer_head *bh;
	struct page *page;
	int err = 0;

	page = FUNC17(mapping, from >> PAGE_SHIFT,
				   FUNC21(mapping, ~__GFP_FS));
	if (!page)
		return -ENOMEM;

	blocksize = inode->i_sb->s_blocksize;

	iblock = index << (PAGE_SHIFT - inode->i_sb->s_blocksize_bits);

	if (!FUNC24(page))
		FUNC10(page, blocksize, 0);

	/* Find the buffer that contains "offset" */
	bh = FUNC23(page);
	pos = blocksize;
	while (offset >= pos) {
		bh = bh->b_this_page;
		iblock++;
		pos += blocksize;
	}
	if (FUNC7(bh)) {
		FUNC0(bh, "freed: skip");
		goto unlock;
	}
	if (!FUNC8(bh)) {
		FUNC0(bh, "unmapped");
		FUNC11(inode, iblock, bh, 0);
		/* unmapped? It's a hole - nothing to do */
		if (!FUNC8(bh)) {
			FUNC0(bh, "still unmapped");
			goto unlock;
		}
	}

	/* Ok, it's mapped. Make sure it's up-to-date */
	if (FUNC3(page))
		FUNC26(bh);

	if (!FUNC9(bh)) {
		err = -EIO;
		FUNC20(REQ_OP_READ, 0, 1, &bh);
		FUNC28(bh);
		/* Uhhuh. Read error. Complain and punt. */
		if (!FUNC9(bh))
			goto unlock;
		if (FUNC4(inode->i_mode) && FUNC2(inode)) {
			/* We expect the key to be set. */
			FUNC1(!FUNC19(inode));
			FUNC5(FUNC18(
					page, blocksize, FUNC6(bh)));
		}
	}
	if (FUNC15(inode)) {
		FUNC0(bh, "get write access");
		err = FUNC14(handle, bh);
		if (err)
			goto unlock;
	}
	FUNC29(page, offset, length);
	FUNC0(bh, "zeroed end of block");

	if (FUNC15(inode)) {
		err = FUNC12(handle, inode, bh);
	} else {
		err = 0;
		FUNC22(bh);
		if (FUNC16(inode))
			err = FUNC13(handle, inode, from,
					length);
	}

unlock:
	FUNC27(page);
	FUNC25(page);
	return err;
}