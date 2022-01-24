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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 void* FUNC5 (struct inode*,struct page*) ; 
 unsigned int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct page *ipage,
							void *txattr_addr)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	unsigned int inline_size = FUNC6(inode);
	struct page *page = NULL;
	void *inline_addr;

	if (ipage) {
		inline_addr = FUNC5(inode, ipage);
	} else {
		page = FUNC3(sbi, inode->i_ino);
		if (FUNC1(page))
			return FUNC2(page);

		inline_addr = FUNC5(inode, page);
	}
	FUNC7(txattr_addr, inline_addr, inline_size);
	FUNC4(page, 1);

	return 0;
}