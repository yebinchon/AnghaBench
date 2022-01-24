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
struct f2fs_sb_info {scalar_t__ blocks_per_seg; TYPE_1__* ckpt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cur_data_blkoff; } ;
struct TYPE_3__ {scalar_t__* alloc_type; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_HOT_DATA ; 
 TYPE_2__* FUNC0 (struct f2fs_sb_info*) ; 
 int PAGE_SIZE ; 
 scalar_t__ SSR ; 
 int SUMMARY_SIZE ; 
 int SUM_FOOTER_SIZE ; 
 int SUM_JOURNAL_SIZE ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct f2fs_sb_info *sbi, bool for_ra)
{
	int valid_sum_count = 0;
	int i, sum_in_page;

	for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
		if (sbi->ckpt->alloc_type[i] == SSR)
			valid_sum_count += sbi->blocks_per_seg;
		else {
			if (for_ra)
				valid_sum_count += FUNC2(
					FUNC0(sbi)->cur_data_blkoff[i]);
			else
				valid_sum_count += FUNC1(sbi, i);
		}
	}

	sum_in_page = (PAGE_SIZE - 2 * SUM_JOURNAL_SIZE -
			SUM_FOOTER_SIZE) / SUMMARY_SIZE;
	if (valid_sum_count <= sum_in_page)
		return 1;
	else if ((valid_sum_count - sum_in_page) <=
		(PAGE_SIZE - SUM_FOOTER_SIZE) / SUMMARY_SIZE)
		return 2;
	return 3;
}