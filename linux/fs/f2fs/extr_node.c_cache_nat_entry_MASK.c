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
struct f2fs_nm_info {int /*<<< orphan*/  nat_tree_lock; } ;
struct f2fs_nat_entry {scalar_t__ version; int /*<<< orphan*/  block_addr; int /*<<< orphan*/  ino; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 struct nat_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nat_entry*) ; 
 struct nat_entry* FUNC3 (struct f2fs_nm_info*,struct nat_entry*,struct f2fs_nat_entry*,int) ; 
 struct nat_entry* FUNC4 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nat_entry*) ; 
 scalar_t__ FUNC9 (struct nat_entry*) ; 
 scalar_t__ FUNC10 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct f2fs_sb_info *sbi, nid_t nid,
						struct f2fs_nat_entry *ne)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct nat_entry *new, *e;

	new = FUNC1(nid, false);
	if (!new)
		return;

	FUNC5(&nm_i->nat_tree_lock);
	e = FUNC4(nm_i, nid);
	if (!e)
		e = FUNC3(nm_i, new, ne, false);
	else
		FUNC6(sbi, FUNC9(e) != FUNC7(ne->ino) ||
				FUNC8(e) !=
					FUNC7(ne->block_addr) ||
				FUNC10(e) != ne->version);
	FUNC11(&nm_i->nat_tree_lock);
	if (e != new)
		FUNC2(new);
}