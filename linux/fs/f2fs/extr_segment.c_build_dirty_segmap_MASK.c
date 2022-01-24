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
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int /*<<< orphan*/ * dirty_segmap; int /*<<< orphan*/  seglist_lock; } ;
struct TYPE_2__ {struct dirty_seglist_info* dirty_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 unsigned int NR_DIRTY_TYPE ; 
 TYPE_1__* FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 struct dirty_seglist_info* FUNC4 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct f2fs_sb_info *sbi)
{
	struct dirty_seglist_info *dirty_i;
	unsigned int bitmap_size, i;

	/* allocate memory for dirty segments list information */
	dirty_i = FUNC4(sbi, sizeof(struct dirty_seglist_info),
								GFP_KERNEL);
	if (!dirty_i)
		return -ENOMEM;

	FUNC1(sbi)->dirty_info = dirty_i;
	FUNC7(&dirty_i->seglist_lock);

	bitmap_size = FUNC2(FUNC0(sbi));

	for (i = 0; i < NR_DIRTY_TYPE; i++) {
		dirty_i->dirty_segmap[i] = FUNC3(sbi, bitmap_size,
								GFP_KERNEL);
		if (!dirty_i->dirty_segmap[i])
			return -ENOMEM;
	}

	FUNC5(sbi);
	return FUNC6(sbi);
}