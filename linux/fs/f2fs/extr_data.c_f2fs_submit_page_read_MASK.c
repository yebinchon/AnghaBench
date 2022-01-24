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
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  DATA ; 
 int EFAULT ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  F2FS_RD_DATA ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bio*,struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct page *page,
							block_t blkaddr)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct bio *bio;

	bio = FUNC7(inode, blkaddr, 1, 0, page->index);
	if (FUNC2(bio))
		return FUNC3(bio);

	/* wait for GCed page writeback via META_MAPPING */
	FUNC8(inode, blkaddr);

	if (FUNC5(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
		FUNC6(bio);
		return -EFAULT;
	}
	FUNC0(page);
	FUNC9(sbi, F2FS_RD_DATA);
	FUNC4(sbi, bio, DATA);
	return 0;
}