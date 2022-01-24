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
struct nat_entry_set {int /*<<< orphan*/  entry_cnt; } ;
struct nat_entry {int /*<<< orphan*/  list; } ;
struct f2fs_nm_info {int /*<<< orphan*/  dirty_nat_cnt; int /*<<< orphan*/  nat_list_lock; int /*<<< orphan*/  nat_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nat_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct f2fs_nm_info *nm_i,
		struct nat_entry_set *set, struct nat_entry *ne)
{
	FUNC2(&nm_i->nat_list_lock);
	FUNC0(&ne->list, &nm_i->nat_entries);
	FUNC3(&nm_i->nat_list_lock);

	FUNC1(ne, IS_DIRTY, false);
	set->entry_cnt--;
	nm_i->dirty_nat_cnt--;
}