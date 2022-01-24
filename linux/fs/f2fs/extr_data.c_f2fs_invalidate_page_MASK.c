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
struct page {TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_META ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 void FUNC9 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

void FUNC12(struct page *page, unsigned int offset,
							unsigned int length)
{
	struct inode *inode = page->mapping->host;
	struct f2fs_sb_info *sbi = FUNC0(inode);

	if (inode->i_ino >= FUNC3(sbi) &&
		(offset % PAGE_SIZE || length != PAGE_SIZE))
		return;

	if (FUNC5(page)) {
		if (inode->i_ino == FUNC1(sbi)) {
			FUNC7(sbi, F2FS_DIRTY_META);
		} else if (inode->i_ino == FUNC2(sbi)) {
			FUNC7(sbi, F2FS_DIRTY_NODES);
		} else {
			FUNC11(inode);
			FUNC10(inode);
		}
	}

	FUNC6(page);

	if (FUNC4(page))
		return FUNC9(inode, page);

	FUNC8(page);
}