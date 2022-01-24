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
struct summary_footer {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  segno; TYPE_1__* sum_blk; int /*<<< orphan*/  next_segno; scalar_t__ next_blkoff; int /*<<< orphan*/  zone; } ;
struct TYPE_2__ {struct summary_footer footer; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  NULL_SEGNO ; 
 int /*<<< orphan*/  FUNC4 (struct summary_footer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUM_TYPE_DATA ; 
 int /*<<< orphan*/  SUM_TYPE_NODE ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct summary_footer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct f2fs_sb_info *sbi, int type, int modified)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	struct summary_footer *sum_footer;

	curseg->segno = curseg->next_segno;
	curseg->zone = FUNC1(sbi, curseg->segno);
	curseg->next_blkoff = 0;
	curseg->next_segno = NULL_SEGNO;

	sum_footer = &(curseg->sum_blk->footer);
	FUNC6(sum_footer, 0, sizeof(struct summary_footer));
	if (FUNC2(type))
		FUNC4(sum_footer, SUM_TYPE_DATA);
	if (FUNC3(type))
		FUNC4(sum_footer, SUM_TYPE_NODE);
	FUNC5(sbi, type, curseg->segno, modified);
}