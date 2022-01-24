#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int /*<<< orphan*/  gc_pin_file_threshold; } ;
struct TYPE_6__ {int /*<<< orphan*/ * v_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  end_blk; } ;
struct TYPE_4__ {scalar_t__* last_victim; } ;

/* Variables and functions */
 size_t ALLOC_NEXT ; 
 int /*<<< orphan*/  DEF_GC_FAILED_PINNED_FILES ; 
 TYPE_3__* FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  default_v_ops ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*) ; 

void FUNC6(struct f2fs_sb_info *sbi)
{
	FUNC0(sbi)->v_ops = &default_v_ops;

	sbi->gc_pin_file_threshold = DEF_GC_FAILED_PINNED_FILES;

	/* give warm/cold data area from slower device */
	if (FUNC5(sbi) && !FUNC4(sbi))
		FUNC3(sbi)->last_victim[ALLOC_NEXT] =
				FUNC2(sbi, FUNC1(0).end_blk) + 1;
}