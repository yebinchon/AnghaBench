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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_xattr_nid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  VALID_XATTR_BLOCK_SIZE ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 unsigned int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, void *txattr_addr)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	nid_t xnid = FUNC0(inode)->i_xattr_nid;
	unsigned int inline_size = FUNC6(inode);
	struct page *xpage;
	void *xattr_addr;

	/* The inode already has an extended attribute block. */
	xpage = FUNC4(sbi, xnid);
	if (FUNC2(xpage))
		return FUNC3(xpage);

	xattr_addr = FUNC8(xpage);
	FUNC7(txattr_addr + inline_size, xattr_addr, VALID_XATTR_BLOCK_SIZE);
	FUNC5(xpage, 1);

	return 0;
}