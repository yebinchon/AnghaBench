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
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; unsigned int next_segno; int /*<<< orphan*/  alloc_type; int /*<<< orphan*/  sum_blk; } ;

/* Variables and functions */
 int ALLOC_LEFT ; 
 int ALLOC_RIGHT ; 
 int CURSEG_COLD_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int CURSEG_WARM_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  NOHEAP ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int,int) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct f2fs_sb_info *sbi, int type, bool new_sec)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	unsigned int segno = curseg->segno;
	int dir = ALLOC_LEFT;

	FUNC6(sbi, curseg->sum_blk,
				FUNC1(sbi, segno));
	if (type == CURSEG_WARM_DATA || type == CURSEG_COLD_DATA)
		dir = ALLOC_RIGHT;

	if (FUNC5(sbi, NOHEAP))
		dir = ALLOC_RIGHT;

	segno = FUNC2(sbi, type);
	FUNC3(sbi, &segno, new_sec, dir);
	curseg->next_segno = segno;
	FUNC4(sbi, type, 1);
	curseg->alloc_type = LFS;
}