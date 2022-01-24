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
struct nat_entry {int /*<<< orphan*/  list; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_list_lock; int /*<<< orphan*/  nat_entries; int /*<<< orphan*/  nat_root; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IS_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nat_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nat_entry *FUNC6(struct f2fs_nm_info *nm_i, nid_t n)
{
	struct nat_entry *ne;

	ne = FUNC3(&nm_i->nat_root, n);

	/* for recent accessed nat entry, move it to tail of lru list */
	if (ne && !FUNC0(ne, IS_DIRTY)) {
		FUNC4(&nm_i->nat_list_lock);
		if (!FUNC1(&ne->list))
			FUNC2(&ne->list, &nm_i->nat_entries);
		FUNC5(&nm_i->nat_list_lock);
	}

	return ne;
}