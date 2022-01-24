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
struct f2fs_dentry_ptr {unsigned int max; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 void* FUNC5 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 

bool FUNC7(struct inode *dir)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct page *ipage;
	unsigned int bit_pos = 2;
	void *inline_dentry;
	struct f2fs_dentry_ptr d;

	ipage = FUNC2(sbi, dir->i_ino);
	if (FUNC1(ipage))
		return false;

	inline_dentry = FUNC5(dir, ipage);
	FUNC6(dir, &d, inline_dentry);

	bit_pos = FUNC4(d.bitmap, d.max, bit_pos);

	FUNC3(ipage, 1);

	if (bit_pos < d.max)
		return false;

	return true;
}