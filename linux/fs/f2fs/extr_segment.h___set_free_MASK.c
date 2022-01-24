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
struct free_segmap_info {int /*<<< orphan*/  segmap_lock; int /*<<< orphan*/  free_sections; int /*<<< orphan*/  free_secmap; int /*<<< orphan*/  free_segmap; int /*<<< orphan*/  free_segments; } ;
struct f2fs_sb_info {unsigned int segs_per_sec; } ;

/* Variables and functions */
 struct free_segmap_info* FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct f2fs_sb_info *sbi, unsigned int segno)
{
	struct free_segmap_info *free_i = FUNC0(sbi);
	unsigned int secno = FUNC1(sbi, segno);
	unsigned int start_segno = FUNC2(sbi, secno);
	unsigned int next;

	FUNC5(&free_i->segmap_lock);
	FUNC3(segno, free_i->free_segmap);
	free_i->free_segments++;

	next = FUNC4(free_i->free_segmap,
			start_segno + sbi->segs_per_sec, start_segno);
	if (next >= start_segno + sbi->segs_per_sec) {
		FUNC3(secno, free_i->free_secmap);
		free_i->free_sections++;
	}
	FUNC6(&free_i->segmap_lock);
}