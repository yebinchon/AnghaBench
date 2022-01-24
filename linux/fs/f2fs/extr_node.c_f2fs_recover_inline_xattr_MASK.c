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
struct f2fs_inode {int i_inline; } ;

/* Variables and functions */
 int F2FS_INLINE_XATTR ; 
 struct f2fs_inode* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_INLINE_XATTR ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC9 (struct inode*,struct page*) ; 
 size_t FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC13(struct inode *inode, struct page *page)
{
	void *src_addr, *dst_addr;
	size_t inline_size;
	struct page *ipage;
	struct f2fs_inode *ri;

	ipage = FUNC5(FUNC1(inode), inode->i_ino);
	FUNC4(FUNC1(inode), FUNC2(ipage));

	ri = FUNC0(page);
	if (ri->i_inline & F2FS_INLINE_XATTR) {
		FUNC12(inode, FI_INLINE_XATTR);
	} else {
		FUNC3(inode, FI_INLINE_XATTR);
		goto update_inode;
	}

	dst_addr = FUNC9(inode, ipage);
	src_addr = FUNC9(inode, page);
	inline_size = FUNC10(inode);

	FUNC8(ipage, NODE, true, true);
	FUNC11(dst_addr, src_addr, inline_size);
update_inode:
	FUNC7(inode, ipage);
	FUNC6(ipage, 1);
}