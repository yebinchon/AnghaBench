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
struct seg_entry {int dummy; } ;
struct page {int dummy; } ;
struct f2fs_sit_entry {int dummy; } ;
struct f2fs_sit_block {struct f2fs_sit_entry* entries; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SIT_ENTRY_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct seg_entry*,struct f2fs_sit_entry*) ; 
 struct seg_entry* FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sit_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC5 (struct page*) ; 

__attribute__((used)) static inline void FUNC6(struct f2fs_sb_info *sbi,
				struct page *page, unsigned int start)
{
	struct f2fs_sit_block *raw_sit;
	struct seg_entry *se;
	struct f2fs_sit_entry *rs;
	unsigned int end = FUNC4(start + SIT_ENTRY_PER_BLOCK,
					(unsigned long)FUNC0(sbi));
	int i;

	raw_sit = (struct f2fs_sit_block *)FUNC5(page);
	FUNC3(raw_sit, 0, PAGE_SIZE);
	for (i = 0; i < end - start; i++) {
		rs = &raw_sit->entries[i];
		se = FUNC2(sbi, start + i);
		FUNC1(se, rs);
	}
}