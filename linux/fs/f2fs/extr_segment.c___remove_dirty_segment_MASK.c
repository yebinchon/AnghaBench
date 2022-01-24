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
struct seg_entry {int type; } ;
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int /*<<< orphan*/  victim_secmap; int /*<<< orphan*/ * nr_dirty; int /*<<< orphan*/ * dirty_segmap; } ;
typedef  enum dirty_type { ____Placeholder_dirty_type } dirty_type ;
struct TYPE_2__ {int /*<<< orphan*/  invalid_segmap; } ;

/* Variables and functions */
 int DIRTY ; 
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC4 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,unsigned int,int) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct f2fs_sb_info *sbi, unsigned int segno,
		enum dirty_type dirty_type)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);

	if (FUNC6(segno, dirty_i->dirty_segmap[dirty_type]))
		dirty_i->nr_dirty[dirty_type]--;

	if (dirty_type == DIRTY) {
		struct seg_entry *sentry = FUNC4(sbi, segno);
		enum dirty_type t = sentry->type;

		if (FUNC6(segno, dirty_i->dirty_segmap[t]))
			dirty_i->nr_dirty[t]--;

		if (FUNC5(sbi, segno, true) == 0) {
			FUNC3(FUNC1(sbi, segno),
						dirty_i->victim_secmap);
#ifdef CONFIG_F2FS_CHECK_FS
			clear_bit(segno, SIT_I(sbi)->invalid_segmap);
#endif
		}
	}
}