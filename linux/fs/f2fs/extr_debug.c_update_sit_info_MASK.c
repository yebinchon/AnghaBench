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
struct f2fs_stat_info {void* avg_vblocks; scalar_t__ dirty_count; int /*<<< orphan*/  bimodal; } ;
struct f2fs_sb_info {scalar_t__ segs_per_sec; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct f2fs_sb_info*) ; 
 struct f2fs_stat_info* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned long long FUNC2 (struct f2fs_sb_info*) ; 
 unsigned int FUNC3 (struct f2fs_sb_info*) ; 
 unsigned long long FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned long long) ; 
 void* FUNC6 (unsigned long long,int) ; 
 unsigned int FUNC7 (struct f2fs_sb_info*,unsigned int,int) ; 

__attribute__((used)) static void FUNC8(struct f2fs_sb_info *sbi)
{
	struct f2fs_stat_info *si = FUNC1(sbi);
	unsigned long long blks_per_sec, hblks_per_sec, total_vblocks;
	unsigned long long bimodal, dist;
	unsigned int segno, vblocks;
	int ndirty = 0;

	bimodal = 0;
	total_vblocks = 0;
	blks_per_sec = FUNC0(sbi);
	hblks_per_sec = blks_per_sec / 2;
	for (segno = 0; segno < FUNC3(sbi); segno += sbi->segs_per_sec) {
		vblocks = FUNC7(sbi, segno, true);
		dist = FUNC4(vblocks - hblks_per_sec);
		bimodal += dist * dist;

		if (vblocks > 0 && vblocks < blks_per_sec) {
			total_vblocks += vblocks;
			ndirty++;
		}
	}
	dist = FUNC6(FUNC2(sbi) * hblks_per_sec * hblks_per_sec, 100);
	si->bimodal = FUNC5(bimodal, dist);
	if (si->dirty_count)
		si->avg_vblocks = FUNC6(total_vblocks, ndirty);
	else
		si->avg_vblocks = 0;
}