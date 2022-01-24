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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int FGP_LOCK ; 
 int FGP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct page*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static void FUNC11(struct f2fs_sb_info *sbi, nid_t ino)
{
	struct inode *inode;
	struct page *page;
	int ret;

	/* should flush inline_data before evict_inode */
	inode = FUNC7(sbi->sb, ino);
	if (!inode)
		return;

	page = FUNC3(inode->i_mapping, 0,
					FGP_LOCK|FGP_NOWAIT, 0);
	if (!page)
		goto iput_out;

	if (!FUNC1(page))
		goto page_out;

	if (!FUNC0(page))
		goto page_out;

	if (!FUNC2(page))
		goto page_out;

	ret = FUNC6(inode, page);
	FUNC8(inode);
	FUNC5(inode);
	if (ret)
		FUNC10(page);
page_out:
	FUNC4(page, 1);
iput_out:
	FUNC9(inode);
}