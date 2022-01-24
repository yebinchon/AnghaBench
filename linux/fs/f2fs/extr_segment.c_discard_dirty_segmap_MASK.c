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
struct dirty_seglist_info {int /*<<< orphan*/  seglist_lock; scalar_t__* nr_dirty; int /*<<< orphan*/ * dirty_segmap; } ;
typedef  enum dirty_type { ____Placeholder_dirty_type } dirty_type ;

/* Variables and functions */
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct f2fs_sb_info *sbi,
		enum dirty_type dirty_type)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);

	FUNC2(&dirty_i->seglist_lock);
	FUNC1(dirty_i->dirty_segmap[dirty_type]);
	dirty_i->nr_dirty[dirty_type] = 0;
	FUNC3(&dirty_i->seglist_lock);
}