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
typedef  scalar_t__ block_t ;
struct TYPE_2__ {scalar_t__ unusable_cap; } ;

/* Variables and functions */
 int EAGAIN ; 
 TYPE_1__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED_QUICK ; 
 int FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct f2fs_sb_info*) ; 
 int FUNC4 (struct f2fs_sb_info*) ; 

int FUNC5(struct f2fs_sb_info *sbi, block_t unusable)
{
	int ovp_hole_segs =
		(FUNC3(sbi) - FUNC4(sbi));
	if (unusable > FUNC0(sbi).unusable_cap)
		return -EAGAIN;
	if (FUNC2(sbi, SBI_CP_DISABLED_QUICK) &&
		FUNC1(sbi) > ovp_hole_segs)
		return -EAGAIN;
	return 0;
}