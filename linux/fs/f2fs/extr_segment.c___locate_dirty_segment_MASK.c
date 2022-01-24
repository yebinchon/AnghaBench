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
struct seg_entry {int type; } ;
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int /*<<< orphan*/ * nr_dirty; int /*<<< orphan*/ * dirty_segmap; } ;
typedef  enum dirty_type { ____Placeholder_dirty_type } dirty_type ;

/* Variables and functions */
 int DIRTY ; 
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 struct seg_entry* FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi, unsigned int segno,
		enum dirty_type dirty_type)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);

	/* need not be added */
	if (FUNC1(sbi, segno))
		return;

	if (!FUNC4(segno, dirty_i->dirty_segmap[dirty_type]))
		dirty_i->nr_dirty[dirty_type]++;

	if (dirty_type == DIRTY) {
		struct seg_entry *sentry = FUNC3(sbi, segno);
		enum dirty_type t = sentry->type;

		if (FUNC5(t >= DIRTY)) {
			FUNC2(sbi, 1);
			return;
		}
		if (!FUNC4(segno, dirty_i->dirty_segmap[t]))
			dirty_i->nr_dirty[t]++;
	}
}