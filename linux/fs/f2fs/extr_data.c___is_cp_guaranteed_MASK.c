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
struct page {struct address_space* mapping; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct page*) ; 

__attribute__((used)) static bool FUNC8(struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode;
	struct f2fs_sb_info *sbi;

	if (!mapping)
		return false;

	inode = mapping->host;
	sbi = FUNC0(inode);

	if (inode->i_ino == FUNC1(sbi) ||
			inode->i_ino ==  FUNC2(sbi) ||
			FUNC4(inode->i_mode) ||
			(FUNC5(inode->i_mode) &&
			(FUNC6(inode) || FUNC3(inode))) ||
			FUNC7(page))
		return true;
	return false;
}