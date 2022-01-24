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
struct nat_entry_set {int /*<<< orphan*/  entry_list; int /*<<< orphan*/  entry_cnt; } ;
struct nat_entry {int /*<<< orphan*/  list; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_list_lock; int /*<<< orphan*/  dirty_nat_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_DIRTY ; 
 int /*<<< orphan*/  IS_PREALLOC ; 
 scalar_t__ NEW_ADDR ; 
 struct nat_entry_set* FUNC0 (struct f2fs_nm_info*,struct nat_entry*) ; 
 scalar_t__ FUNC1 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct nat_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct f2fs_nm_info *nm_i,
						struct nat_entry *ne)
{
	struct nat_entry_set *head;
	bool new_ne = FUNC4(ne) == NEW_ADDR;

	if (!new_ne)
		head = FUNC0(nm_i, ne);

	/*
	 * update entry_cnt in below condition:
	 * 1. update NEW_ADDR to valid block address;
	 * 2. update old block address to new one;
	 */
	if (!new_ne && (FUNC1(ne, IS_PREALLOC) ||
				!FUNC1(ne, IS_DIRTY)))
		head->entry_cnt++;

	FUNC5(ne, IS_PREALLOC, new_ne);

	if (FUNC1(ne, IS_DIRTY))
		goto refresh_list;

	nm_i->dirty_nat_cnt++;
	FUNC5(ne, IS_DIRTY, true);
refresh_list:
	FUNC6(&nm_i->nat_list_lock);
	if (new_ne)
		FUNC2(&ne->list);
	else
		FUNC3(&ne->list, &head->entry_list);
	FUNC7(&nm_i->nat_list_lock);
}