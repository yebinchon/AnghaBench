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
struct f2fs_sb_info {int dummy; } ;
struct TYPE_6__ {unsigned int segno; } ;
struct TYPE_5__ {scalar_t__ alloc_mode; } ;
struct TYPE_4__ {unsigned int* last_victim; } ;

/* Variables and functions */
 scalar_t__ ALLOC_MODE_REUSE ; 
 size_t ALLOC_NEXT ; 
 int CURSEG_HOT_DATA ; 
 TYPE_3__* FUNC0 (struct f2fs_sb_info*,int) ; 
 TYPE_2__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  NOHEAP ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 TYPE_1__* FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC8(struct f2fs_sb_info *sbi, int type)
{
	/* if segs_per_sec is large than 1, we need to keep original policy. */
	if (FUNC4(sbi))
		return FUNC0(sbi, type)->segno;

	if (FUNC7(FUNC5(sbi, SBI_CP_DISABLED)))
		return 0;

	if (FUNC6(sbi, NOHEAP) &&
		(type == CURSEG_HOT_DATA || FUNC2(type)))
		return 0;

	if (FUNC3(sbi)->last_victim[ALLOC_NEXT])
		return FUNC3(sbi)->last_victim[ALLOC_NEXT];

	/* find segments from 0 to reuse freed segments */
	if (FUNC1(sbi).alloc_mode == ALLOC_MODE_REUSE)
		return 0;

	return FUNC0(sbi, type)->segno;
}