#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; } ;
struct TYPE_4__ {int /*<<< orphan*/  sentry_lock; TYPE_1__* s_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* allocate_segment ) (struct f2fs_sb_info*,int,int) ;} ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct f2fs_sb_info *sbi)
{
	struct curseg_info *curseg;
	unsigned int old_segno;
	int i;

	FUNC2(&FUNC1(sbi)->sentry_lock);

	for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
		curseg = FUNC0(sbi, i);
		old_segno = curseg->segno;
		FUNC1(sbi)->s_ops->allocate_segment(sbi, i, true);
		FUNC3(sbi, old_segno);
	}

	FUNC5(&FUNC1(sbi)->sentry_lock);
}