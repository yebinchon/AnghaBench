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
typedef  int u64 ;
struct page {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_mtime_nsec; void* i_ctime; void* i_mtime; void* i_size; } ;
struct TYPE_3__ {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; TYPE_1__ i_mtime; TYPE_1__ i_ctime; int /*<<< orphan*/  i_blocks; struct address_space* i_mapping; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct page*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 TYPE_1__ FUNC9 (struct inode*) ; 
 struct page* FUNC10 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/ * FUNC19 (struct inode*,struct buffer_head*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long long,unsigned long long,unsigned long long,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 

__attribute__((used)) static int FUNC23(struct inode *inode, u64 abs_from,
				 u64 abs_to, struct buffer_head *di_bh)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	unsigned long index = abs_from >> PAGE_SHIFT;
	handle_t *handle;
	int ret = 0;
	unsigned zero_from, zero_to, block_start, block_end;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC0(abs_from >= abs_to);
	FUNC0(abs_to > (((u64)index + 1) << PAGE_SHIFT));
	FUNC0(abs_from & (inode->i_blkbits - 1));

	handle = FUNC19(inode, di_bh,
						      abs_from,
						      abs_to - abs_from);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		goto out;
	}

	page = FUNC10(mapping, index, GFP_NOFS);
	if (!page) {
		ret = -ENOMEM;
		FUNC14(ret);
		goto out_commit_trans;
	}

	/* Get the offsets within the page that we want to zero */
	zero_from = abs_from & (PAGE_SIZE - 1);
	zero_to = abs_to & (PAGE_SIZE - 1);
	if (!zero_to)
		zero_to = PAGE_SIZE;

	FUNC21(
			(unsigned long long)FUNC2(inode)->ip_blkno,
			(unsigned long long)abs_from,
			(unsigned long long)abs_to,
			index, zero_from, zero_to);

	/* We know that zero_from is block aligned */
	for (block_start = zero_from; block_start < zero_to;
	     block_start = block_end) {
		block_end = block_start + FUNC11(inode);

		/*
		 * block_start is block-aligned.  Bump it by one to force
		 * __block_write_begin and block_commit_write to zero the
		 * whole block.
		 */
		ret = FUNC5(page, block_start + 1, 0,
					  ocfs2_get_block);
		if (ret < 0) {
			FUNC14(ret);
			goto out_unlock;
		}


		/* must not update i_size! */
		ret = FUNC6(page, block_start + 1,
					 block_start + 1);
		if (ret < 0)
			FUNC14(ret);
		else
			ret = 0;
	}

	/*
	 * fs-writeback will release the dirty pages without page lock
	 * whose offset are over inode size, the release happens at
	 * block_write_full_page().
	 */
	FUNC13(inode, abs_to);
	inode->i_blocks = FUNC16(inode);
	di->i_size = FUNC8((u64)FUNC12(inode));
	inode->i_mtime = inode->i_ctime = FUNC9(inode);
	di->i_mtime = di->i_ctime = FUNC8(inode->i_mtime.tv_sec);
	di->i_ctime_nsec = FUNC7(inode->i_mtime.tv_nsec);
	di->i_mtime_nsec = di->i_ctime_nsec;
	if (handle) {
		FUNC17(handle, di_bh);
		FUNC18(handle, inode, 1);
	}

out_unlock:
	FUNC22(page);
	FUNC20(page);
out_commit_trans:
	if (handle)
		FUNC15(FUNC3(inode->i_sb), handle);
out:
	return ret;
}