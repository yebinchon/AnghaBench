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
struct TYPE_2__ {struct f2fs_journal* journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_COMPACT_SUM_FLAG ; 
 int CURSEG_COLD_DATA ; 
 int CURSEG_COLD_NODE ; 
 int CURSEG_HOT_DATA ; 
 int CURSEG_HOT_NODE ; 
 TYPE_1__* FUNC0 (struct f2fs_sb_info*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  META_CP ; 
 scalar_t__ NAT_JOURNAL_ENTRIES ; 
 int NR_CURSEG_TYPE ; 
 scalar_t__ SIT_JOURNAL_ENTRIES ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,char*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct f2fs_journal*) ; 
 int FUNC7 (struct f2fs_sb_info*) ; 
 int FUNC8 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC9 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int,int) ; 

__attribute__((used)) static int FUNC12(struct f2fs_sb_info *sbi)
{
	struct f2fs_journal *sit_j = FUNC0(sbi, CURSEG_COLD_DATA)->journal;
	struct f2fs_journal *nat_j = FUNC0(sbi, CURSEG_HOT_DATA)->journal;
	int type = CURSEG_HOT_DATA;
	int err;

	if (FUNC5(sbi, CP_COMPACT_SUM_FLAG)) {
		int npages = FUNC3(sbi, true);

		if (npages >= 2)
			FUNC4(sbi, FUNC10(sbi), npages,
							META_CP, true);

		/* restore for compacted data summary */
		err = FUNC7(sbi);
		if (err)
			return err;
		type = CURSEG_HOT_NODE;
	}

	if (FUNC1(sbi))
		FUNC4(sbi, FUNC11(sbi, NR_CURSEG_TYPE, type),
					NR_CURSEG_TYPE - type, META_CP, true);

	for (; type <= CURSEG_COLD_NODE; type++) {
		err = FUNC8(sbi, type);
		if (err)
			return err;
	}

	/* sanity check for summary blocks */
	if (FUNC6(nat_j) > NAT_JOURNAL_ENTRIES ||
			FUNC9(sit_j) > SIT_JOURNAL_ENTRIES) {
		FUNC2(sbi, "invalid journal entries nats %u sits %u\n",
			 FUNC6(nat_j), FUNC9(sit_j));
		return -EINVAL;
	}

	return 0;
}