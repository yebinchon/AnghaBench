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
typedef  int /*<<< orphan*/  u64 ;
struct squashfs_sb_info {int block_log; int block_size; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ fragment_block; int /*<<< orphan*/  start; } ;
struct TYPE_5__ {struct squashfs_sb_info* s_fs_info; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ SQUASHFS_INVALID_BLK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct inode*) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct inode*,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (struct inode*) ; 
 int FUNC11 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (struct page*,int) ; 
 int FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
	int index = page->index >> (msblk->block_log - PAGE_SHIFT);
	int file_end = FUNC5(inode) >> msblk->block_log;
	int expected = index == file_end ?
			(FUNC5(inode) & (msblk->block_size - 1)) :
			 msblk->block_size;
	int res;
	void *pageaddr;

	FUNC3("Entered squashfs_readpage, page index %lx, start block %llx\n",
				page->index, FUNC10(inode)->start);

	if (page->index >= ((FUNC5(inode) + PAGE_SIZE - 1) >>
					PAGE_SHIFT))
		goto out;

	if (index < file_end || FUNC10(inode)->fragment_block ==
					SQUASHFS_INVALID_BLK) {
		u64 block = 0;
		int bsize = FUNC9(inode, index, &block);
		if (bsize < 0)
			goto error_out;

		if (bsize == 0)
			res = FUNC13(page, expected);
		else
			res = FUNC11(page, block, bsize, expected);
	} else
		res = FUNC12(page, expected);

	if (!res)
		return 0;

error_out:
	FUNC1(page);
out:
	pageaddr = FUNC6(page);
	FUNC8(pageaddr, 0, PAGE_SIZE);
	FUNC7(pageaddr);
	FUNC4(page);
	if (!FUNC0(page))
		FUNC2(page);
	FUNC14(page);

	return 0;
}