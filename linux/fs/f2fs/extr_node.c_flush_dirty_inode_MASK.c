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
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  f2fs_match_ino ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct page*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static bool FUNC6(struct page *page)
{
	struct f2fs_sb_info *sbi = FUNC0(page);
	struct inode *inode;
	nid_t ino = FUNC3(page);

	inode = FUNC2(sbi->sb, ino, f2fs_match_ino, NULL);
	if (!inode)
		return false;

	FUNC1(inode, page);
	FUNC5(page);

	FUNC4(inode);
	return true;
}