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
struct nat_entry_set {scalar_t__ entry_cnt; int /*<<< orphan*/  set; int /*<<< orphan*/  set_list; int /*<<< orphan*/  entry_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  nid; } ;
struct nat_entry {TYPE_1__ ni; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_set_root; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nat_entry_set* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nat_entry_set*) ; 
 int /*<<< orphan*/  nat_entry_set_slab ; 
 struct nat_entry_set* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nat_entry_set *FUNC5(struct f2fs_nm_info *nm_i,
							struct nat_entry *ne)
{
	nid_t set = FUNC1(ne->ni.nid);
	struct nat_entry_set *head;

	head = FUNC4(&nm_i->nat_set_root, set);
	if (!head) {
		head = FUNC2(nat_entry_set_slab, GFP_NOFS);

		FUNC0(&head->entry_list);
		FUNC0(&head->set_list);
		head->set = set;
		head->entry_cnt = 0;
		FUNC3(&nm_i->nat_set_root, set, head);
	}
	return head;
}