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
struct inode {int dummy; } ;
struct f2fs_dentry_block {int /*<<< orphan*/  dentry_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (struct page*) ; 
 unsigned int NR_DENTRY_IN_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 struct page* FUNC4 (struct inode*,unsigned long,int) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 struct f2fs_dentry_block* FUNC8 (struct page*) ; 

bool FUNC9(struct inode *dir)
{
	unsigned long bidx;
	struct page *dentry_page;
	unsigned int bit_pos;
	struct f2fs_dentry_block *dentry_blk;
	unsigned long nblock = FUNC2(dir);

	if (FUNC5(dir))
		return FUNC3(dir);

	for (bidx = 0; bidx < nblock; bidx++) {
		dentry_page = FUNC4(dir, bidx, false);
		if (FUNC0(dentry_page)) {
			if (FUNC1(dentry_page) == -ENOENT)
				continue;
			else
				return false;
		}

		dentry_blk = FUNC8(dentry_page);
		if (bidx == 0)
			bit_pos = 2;
		else
			bit_pos = 0;
		bit_pos = FUNC7(&dentry_blk->dentry_bitmap,
						NR_DENTRY_IN_BLOCK,
						bit_pos);

		FUNC6(dentry_page, 1);

		if (bit_pos < NR_DENTRY_IN_BLOCK)
			return false;
	}
	return true;
}