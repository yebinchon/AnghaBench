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
struct f2fs_journal {int dummy; } ;
struct curseg_info {scalar_t__ next_blkoff; int /*<<< orphan*/  segno; void* journal; int /*<<< orphan*/  journal_rwsem; void* sum_blk; int /*<<< orphan*/  curseg_mutex; } ;
struct TYPE_2__ {struct curseg_info* curseg_array; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NR_CURSEG_TYPE ; 
 int /*<<< orphan*/  NULL_SEGNO ; 
 int PAGE_SIZE ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct f2fs_sb_info*) ; 

__attribute__((used)) static int FUNC6(struct f2fs_sb_info *sbi)
{
	struct curseg_info *array;
	int i;

	array = FUNC2(sbi, FUNC1(NR_CURSEG_TYPE, sizeof(*array)),
			     GFP_KERNEL);
	if (!array)
		return -ENOMEM;

	FUNC0(sbi)->curseg_array = array;

	for (i = 0; i < NR_CURSEG_TYPE; i++) {
		FUNC4(&array[i].curseg_mutex);
		array[i].sum_blk = FUNC2(sbi, PAGE_SIZE, GFP_KERNEL);
		if (!array[i].sum_blk)
			return -ENOMEM;
		FUNC3(&array[i].journal_rwsem);
		array[i].journal = FUNC2(sbi,
				sizeof(struct f2fs_journal), GFP_KERNEL);
		if (!array[i].journal)
			return -ENOMEM;
		array[i].segno = NULL_SEGNO;
		array[i].next_blkoff = 0;
	}
	return FUNC5(sbi);
}