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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int i_inline; int /*<<< orphan*/  i_extra_isize; } ;
struct TYPE_2__ {struct f2fs_inode i; } ;

/* Variables and functions */
 int F2FS_EXTRA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  i_inode_checksum ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct f2fs_sb_info *sbi, struct page *page)
{
	struct f2fs_inode *ri = &FUNC1(page)->i;

	if (!FUNC3(sbi))
		return false;

	if (!FUNC2(page) || !(ri->i_inline & F2FS_EXTRA_ATTR))
		return false;

	if (!FUNC0(ri, FUNC4(ri->i_extra_isize),
				i_inode_checksum))
		return false;

	return true;
}