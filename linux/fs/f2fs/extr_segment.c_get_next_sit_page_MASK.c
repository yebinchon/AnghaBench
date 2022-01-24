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
struct sit_info {int dummy; } ;
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 struct sit_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 struct page* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct sit_info*,unsigned int) ; 

__attribute__((used)) static struct page *FUNC7(struct f2fs_sb_info *sbi,
					unsigned int start)
{
	struct sit_info *sit_i = FUNC0(sbi);
	struct page *page;
	pgoff_t src_off, dst_off;

	src_off = FUNC1(sbi, start);
	dst_off = FUNC3(sbi, src_off);

	page = FUNC2(sbi, dst_off);
	FUNC4(sbi, page, start);

	FUNC5(page);
	FUNC6(sit_i, start);

	return page;
}