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
struct free_segmap_info {int /*<<< orphan*/  segmap_lock; int /*<<< orphan*/  free_segmap; int /*<<< orphan*/  free_secmap; } ;
struct f2fs_sb_info {unsigned int secs_per_zone; unsigned int segs_per_sec; } ;
struct TYPE_2__ {unsigned int zone; } ;

/* Variables and functions */
 int ALLOC_LEFT ; 
 int ALLOC_RIGHT ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*,int) ; 
 struct free_segmap_info* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int FUNC4 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int FUNC5 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int FUNC6 (struct f2fs_sb_info*) ; 
 int NR_CURSEG_TYPE ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct f2fs_sb_info *sbi,
			unsigned int *newseg, bool new_sec, int dir)
{
	struct free_segmap_info *free_i = FUNC1(sbi);
	unsigned int segno, secno, zoneno;
	unsigned int total_zones = FUNC6(sbi) / sbi->secs_per_zone;
	unsigned int hint = FUNC2(sbi, *newseg);
	unsigned int old_zoneno = FUNC5(sbi, *newseg);
	unsigned int left_start = hint;
	bool init = true;
	int go_left = 0;
	int i;

	FUNC10(&free_i->segmap_lock);

	if (!new_sec && ((*newseg + 1) % sbi->segs_per_sec)) {
		segno = FUNC9(free_i->free_segmap,
			FUNC3(sbi, hint + 1), *newseg + 1);
		if (segno < FUNC3(sbi, hint + 1))
			goto got_it;
	}
find_other_zone:
	secno = FUNC9(free_i->free_secmap, FUNC6(sbi), hint);
	if (secno >= FUNC6(sbi)) {
		if (dir == ALLOC_RIGHT) {
			secno = FUNC9(free_i->free_secmap,
							FUNC6(sbi), 0);
			FUNC8(sbi, secno >= FUNC6(sbi));
		} else {
			go_left = 1;
			left_start = hint - 1;
		}
	}
	if (go_left == 0)
		goto skip_left;

	while (FUNC12(left_start, free_i->free_secmap)) {
		if (left_start > 0) {
			left_start--;
			continue;
		}
		left_start = FUNC9(free_i->free_secmap,
							FUNC6(sbi), 0);
		FUNC8(sbi, left_start >= FUNC6(sbi));
		break;
	}
	secno = left_start;
skip_left:
	segno = FUNC3(sbi, secno);
	zoneno = FUNC4(sbi, secno);

	/* give up on finding another zone */
	if (!init)
		goto got_it;
	if (sbi->secs_per_zone == 1)
		goto got_it;
	if (zoneno == old_zoneno)
		goto got_it;
	if (dir == ALLOC_LEFT) {
		if (!go_left && zoneno + 1 >= total_zones)
			goto got_it;
		if (go_left && zoneno == 0)
			goto got_it;
	}
	for (i = 0; i < NR_CURSEG_TYPE; i++)
		if (FUNC0(sbi, i)->zone == zoneno)
			break;

	if (i < NR_CURSEG_TYPE) {
		/* zone is in user, try another */
		if (go_left)
			hint = zoneno * sbi->secs_per_zone - 1;
		else if (zoneno + 1 >= total_zones)
			hint = 0;
		else
			hint = (zoneno + 1) * sbi->secs_per_zone;
		init = false;
		goto find_other_zone;
	}
got_it:
	/* set it as dirty segment in free segmap */
	FUNC8(sbi, FUNC12(segno, free_i->free_segmap));
	FUNC7(sbi, segno);
	*newseg = segno;
	FUNC11(&free_i->segmap_lock);
}