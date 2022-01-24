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
struct curseg_info {int /*<<< orphan*/  journal_rwsem; struct f2fs_journal* journal; } ;
struct TYPE_2__ {int /*<<< orphan*/  sit_entry_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSEG_COLD_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct f2fs_sb_info*) ; 
 int FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_journal*,int) ; 
 int FUNC7 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_journal*,int) ; 

__attribute__((used)) static void FUNC10(struct f2fs_sb_info *sbi)
{
	struct curseg_info *curseg = FUNC0(sbi, CURSEG_COLD_DATA);
	struct f2fs_journal *journal = curseg->journal;
	int i;

	FUNC4(&curseg->journal_rwsem);
	for (i = 0; i < FUNC7(journal); i++) {
		unsigned int segno;
		bool dirtied;

		segno = FUNC5(FUNC6(journal, i));
		dirtied = FUNC2(sbi, segno);

		if (!dirtied)
			FUNC3(segno, &FUNC1(sbi)->sit_entry_set);
	}
	FUNC9(journal, -i);
	FUNC8(&curseg->journal_rwsem);
}