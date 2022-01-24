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
struct sit_info {scalar_t__ sit_blocks; int /*<<< orphan*/  sit_bitmap; int /*<<< orphan*/  sit_bitmap_mir; scalar_t__ sit_base_addr; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct sit_info* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline pgoff_t FUNC5(struct f2fs_sb_info *sbi,
						unsigned int start)
{
	struct sit_info *sit_i = FUNC1(sbi);
	unsigned int offset = FUNC0(start);
	block_t blk_addr = sit_i->sit_base_addr + offset;

	FUNC2(sbi, start);

#ifdef CONFIG_F2FS_CHECK_FS
	if (f2fs_test_bit(offset, sit_i->sit_bitmap) !=
			f2fs_test_bit(offset, sit_i->sit_bitmap_mir))
		f2fs_bug_on(sbi, 1);
#endif

	/* calculate sit block address */
	if (FUNC4(offset, sit_i->sit_bitmap))
		blk_addr += sit_i->sit_blocks;

	return blk_addr;
}