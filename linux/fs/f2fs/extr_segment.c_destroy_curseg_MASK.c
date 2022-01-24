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
struct curseg_info {struct curseg_info* journal; struct curseg_info* sum_blk; } ;
struct TYPE_2__ {struct curseg_info* curseg_array; } ;

/* Variables and functions */
 int NR_CURSEG_TYPE ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct curseg_info*) ; 

__attribute__((used)) static void FUNC2(struct f2fs_sb_info *sbi)
{
	struct curseg_info *array = FUNC0(sbi)->curseg_array;
	int i;

	if (!array)
		return;
	FUNC0(sbi)->curseg_array = NULL;
	for (i = 0; i < NR_CURSEG_TYPE; i++) {
		FUNC1(array[i].sum_blk);
		FUNC1(array[i].journal);
	}
	FUNC1(array);
}