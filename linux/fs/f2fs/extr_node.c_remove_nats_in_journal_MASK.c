#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  available_nids; } ;
struct f2fs_nat_entry {int /*<<< orphan*/  block_addr; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  journal_rwsem; struct f2fs_journal* journal; } ;
typedef  scalar_t__ nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IS_DIRTY ; 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 struct nat_entry* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_nm_info*,struct nat_entry*,struct f2fs_nat_entry*,int) ; 
 struct nat_entry* FUNC4 (struct f2fs_nm_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_nm_info*,struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct f2fs_nat_entry FUNC9 (struct f2fs_journal*,int) ; 
 int FUNC10 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_journal*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_journal*,int) ; 

__attribute__((used)) static void FUNC16(struct f2fs_sb_info *sbi)
{
	struct f2fs_nm_info *nm_i = FUNC1(sbi);
	struct curseg_info *curseg = FUNC0(sbi, CURSEG_HOT_DATA);
	struct f2fs_journal *journal = curseg->journal;
	int i;

	FUNC6(&curseg->journal_rwsem);
	for (i = 0; i < FUNC10(journal); i++) {
		struct nat_entry *ne;
		struct f2fs_nat_entry raw_ne;
		nid_t nid = FUNC8(FUNC11(journal, i));

		raw_ne = FUNC9(journal, i);

		ne = FUNC4(nm_i, nid);
		if (!ne) {
			ne = FUNC2(nid, true);
			FUNC3(nm_i, ne, &raw_ne, true);
		}

		/*
		 * if a free nat in journal has not been used after last
		 * checkpoint, we should remove it from available nids,
		 * since later we will add it again.
		 */
		if (!FUNC7(ne, IS_DIRTY) &&
				FUNC8(raw_ne.block_addr) == NULL_ADDR) {
			FUNC12(&nm_i->nid_list_lock);
			nm_i->available_nids--;
			FUNC13(&nm_i->nid_list_lock);
		}

		FUNC5(nm_i, ne);
	}
	FUNC15(journal, -i);
	FUNC14(&curseg->journal_rwsem);
}