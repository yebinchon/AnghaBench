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
typedef  void* nid_t ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {int /*<<< orphan*/  block_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 (struct f2fs_journal*,int) ; 
 int FUNC5 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_journal*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct f2fs_sb_info *sbi)
{
	struct curseg_info *curseg = FUNC0(sbi, CURSEG_HOT_DATA);
	struct f2fs_journal *journal = curseg->journal;
	int i;

	FUNC2(&curseg->journal_rwsem);
	for (i = 0; i < FUNC5(journal); i++) {
		block_t addr;
		nid_t nid;

		addr = FUNC3(FUNC4(journal, i).block_addr);
		nid = FUNC3(FUNC6(journal, i));
		if (addr == NULL_ADDR)
			FUNC1(sbi, nid, true, false);
		else
			FUNC7(sbi, nid);
	}
	FUNC8(&curseg->journal_rwsem);
}