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
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  enum count_type { ____Placeholder_count_type } count_type ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int F2FS_RD_DATA ; 
 int F2FS_RD_META ; 
 int F2FS_RD_NODE ; 
 struct address_space* FUNC3 (struct page*) ; 

__attribute__((used)) static enum count_type FUNC4(struct page *page)
{
	struct address_space *mapping = FUNC3(page);

	if (mapping) {
		struct inode *inode = mapping->host;
		struct f2fs_sb_info *sbi = FUNC0(inode);

		if (inode->i_ino == FUNC1(sbi))
			return F2FS_RD_META;

		if (inode->i_ino == FUNC2(sbi))
			return F2FS_RD_NODE;
	}
	return F2FS_RD_DATA;
}