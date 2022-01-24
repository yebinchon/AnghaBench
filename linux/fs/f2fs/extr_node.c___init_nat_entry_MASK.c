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
struct nat_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  ni; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_cnt; int /*<<< orphan*/  nat_list_lock; int /*<<< orphan*/  nat_entries; int /*<<< orphan*/  nat_root; } ;
struct f2fs_nat_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct f2fs_nat_entry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nat_entry *FUNC7(struct f2fs_nm_info *nm_i,
	struct nat_entry *ne, struct f2fs_nat_entry *raw_ne, bool no_fail)
{
	if (no_fail)
		FUNC0(&nm_i->nat_root, FUNC2(ne), ne);
	else if (FUNC4(&nm_i->nat_root, FUNC2(ne), ne))
		return NULL;

	if (raw_ne)
		FUNC3(&ne->ni, raw_ne);

	FUNC5(&nm_i->nat_list_lock);
	FUNC1(&ne->list, &nm_i->nat_entries);
	FUNC6(&nm_i->nat_list_lock);

	nm_i->nat_cnt++;
	return ne;
}