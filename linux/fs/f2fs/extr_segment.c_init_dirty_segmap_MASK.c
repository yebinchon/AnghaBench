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
struct free_segmap_info {int dummy; } ;
struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct dirty_seglist_info {int /*<<< orphan*/  seglist_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY ; 
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 struct free_segmap_info* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int) ; 
 unsigned int FUNC5 (struct free_segmap_info*,unsigned int,unsigned int) ; 
 unsigned short FUNC6 (struct f2fs_sb_info*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct f2fs_sb_info *sbi)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);
	struct free_segmap_info *free_i = FUNC1(sbi);
	unsigned int segno = 0, offset = 0;
	unsigned short valid_blocks;

	while (1) {
		/* find dirty segment based on free segmap */
		segno = FUNC5(free_i, FUNC2(sbi), offset);
		if (segno >= FUNC2(sbi))
			break;
		offset = segno + 1;
		valid_blocks = FUNC6(sbi, segno, false);
		if (valid_blocks == sbi->blocks_per_seg || !valid_blocks)
			continue;
		if (valid_blocks > sbi->blocks_per_seg) {
			FUNC4(sbi, 1);
			continue;
		}
		FUNC7(&dirty_i->seglist_lock);
		FUNC3(sbi, segno, DIRTY);
		FUNC8(&dirty_i->seglist_lock);
	}
}