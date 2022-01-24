#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct ext4_sb_info {TYPE_1__* s_journal; int /*<<< orphan*/  rsv_conversion_wq; } ;
struct TYPE_5__ {int j_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JBD2_BARRIER ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, int wait)
{
	int ret = 0;
	tid_t target;
	bool needs_barrier = false;
	struct ext4_sb_info *sbi = FUNC0(sb);

	if (FUNC11(FUNC3(sbi)))
		return 0;

	FUNC10(sb, wait);
	FUNC4(sbi->rsv_conversion_wq);
	/*
	 * Writeback quota in non-journalled quota case - journalled quota has
	 * no dirty dquots
	 */
	FUNC2(sb, -1);
	/*
	 * Data writeback is possible w/o journal transaction, so barrier must
	 * being sent at the end of the function. But we can skip it if
	 * transaction_commit will do it for us.
	 */
	if (sbi->s_journal) {
		target = FUNC5(sbi->s_journal);
		if (wait && sbi->s_journal->j_flags & JBD2_BARRIER &&
		    !FUNC8(sbi->s_journal, target))
			needs_barrier = true;

		if (FUNC6(sbi->s_journal, &target)) {
			if (wait)
				ret = FUNC7(sbi->s_journal,
							   target);
		}
	} else if (wait && FUNC9(sb, BARRIER))
		needs_barrier = true;
	if (needs_barrier) {
		int err;
		err = FUNC1(sb->s_bdev, GFP_KERNEL, NULL);
		if (!ret)
			ret = err;
	}

	return ret;
}