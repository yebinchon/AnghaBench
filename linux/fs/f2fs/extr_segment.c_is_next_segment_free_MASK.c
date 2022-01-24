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
struct free_segmap_info {int /*<<< orphan*/  free_segmap; } ;
struct f2fs_sb_info {unsigned int segs_per_sec; } ;
struct curseg_info {int segno; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 struct free_segmap_info* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct f2fs_sb_info *sbi, int type)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	unsigned int segno = curseg->segno + 1;
	struct free_segmap_info *free_i = FUNC1(sbi);

	if (segno < FUNC2(sbi) && segno % sbi->segs_per_sec)
		return !FUNC3(segno, free_i->free_segmap);
	return 0;
}