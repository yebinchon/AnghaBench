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
struct f2fs_inode {int i_inline; } ;

/* Variables and functions */
 int F2FS_INLINE_DATA ; 
 struct f2fs_inode* FUNC0 (struct page*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 int /*<<< orphan*/  FI_INLINE_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 scalar_t__ FUNC10 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC13 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

bool FUNC17(struct inode *inode, struct page *npage)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct f2fs_inode *ri = NULL;
	void *src_addr, *dst_addr;
	struct page *ipage;

	/*
	 * The inline_data recovery policy is as follows.
	 * [prev.] [next] of inline_data flag
	 *    o       o  -> recover inline_data
	 *    o       x  -> remove inline_data, and then recover data blocks
	 *    x       o  -> remove inline_data, and then recover inline_data
	 *    x       x  -> recover data blocks
	 */
	if (FUNC3(npage))
		ri = FUNC0(npage);

	if (FUNC8(inode) &&
			ri && (ri->i_inline & F2FS_INLINE_DATA)) {
process_inline:
		ipage = FUNC7(sbi, inode->i_ino);
		FUNC6(sbi, FUNC2(ipage));

		FUNC12(ipage, NODE, true, true);

		src_addr = FUNC13(inode, npage);
		dst_addr = FUNC13(inode, ipage);
		FUNC14(dst_addr, src_addr, FUNC4(inode));

		FUNC15(inode, FI_INLINE_DATA);
		FUNC15(inode, FI_DATA_EXIST);

		FUNC16(ipage);
		FUNC9(ipage, 1);
		return true;
	}

	if (FUNC8(inode)) {
		ipage = FUNC7(sbi, inode->i_ino);
		FUNC6(sbi, FUNC2(ipage));
		FUNC11(inode, ipage, 0);
		FUNC5(inode, FI_INLINE_DATA);
		FUNC9(ipage, 1);
	} else if (ri && (ri->i_inline & F2FS_INLINE_DATA)) {
		if (FUNC10(inode, 0, false))
			return false;
		goto process_inline;
	}
	return false;
}