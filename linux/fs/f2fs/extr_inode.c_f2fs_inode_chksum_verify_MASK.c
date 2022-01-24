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
struct page {int /*<<< orphan*/  index; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {int /*<<< orphan*/  i_inode_checksum; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {struct f2fs_inode i; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  SBI_IS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,struct page*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

bool FUNC10(struct f2fs_sb_info *sbi, struct page *page)
{
	struct f2fs_inode *ri;
	__u32 provided, calculated;

	if (FUNC9(FUNC7(sbi, SBI_IS_SHUTDOWN)))
		return true;

#ifdef CONFIG_F2FS_CHECK_FS
	if (!f2fs_enable_inode_chksum(sbi, page))
#else
	if (!FUNC3(sbi, page) ||
			FUNC1(page) || FUNC2(page))
#endif
		return true;

	ri = &FUNC0(page)->i;
	provided = FUNC8(ri->i_inode_checksum);
	calculated = FUNC4(sbi, page);

	if (provided != calculated)
		FUNC5(sbi, "checksum invalid, nid = %lu, ino_of_node = %x, %x vs. %x",
			  page->index, FUNC6(page), provided, calculated);

	return provided == calculated;
}