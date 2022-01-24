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
 int ENOENT ; 
 int ENOMEM ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct page*) ; 

void FUNC8(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct page *node_page;
retry:
	node_page = FUNC4(sbi, inode->i_ino);
	if (FUNC1(node_page)) {
		int err = FUNC2(node_page);
		if (err == -ENOMEM) {
			FUNC3();
			goto retry;
		} else if (err != -ENOENT) {
			FUNC6(sbi, false);
		}
		return;
	}
	FUNC7(inode, node_page);
	FUNC5(node_page, 1);
}