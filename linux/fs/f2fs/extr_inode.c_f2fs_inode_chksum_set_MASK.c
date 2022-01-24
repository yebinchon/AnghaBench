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
struct f2fs_inode {int /*<<< orphan*/  i_inode_checksum; } ;
struct TYPE_2__ {struct f2fs_inode i; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,struct page*) ; 

void FUNC4(struct f2fs_sb_info *sbi, struct page *page)
{
	struct f2fs_inode *ri = &FUNC0(page)->i;

	if (!FUNC2(sbi, page))
		return;

	ri->i_inode_checksum = FUNC1(FUNC3(sbi, page));
}