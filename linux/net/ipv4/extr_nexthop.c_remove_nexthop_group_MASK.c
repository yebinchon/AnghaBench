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
struct nl_info {int dummy; } ;
struct nh_grp_entry {int /*<<< orphan*/ * nh; int /*<<< orphan*/  nh_list; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  nh_grp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nh_group* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nexthop *nh, struct nl_info *nlinfo)
{
	struct nh_group *nhg = FUNC3(nh->nh_grp);
	int i, num_nh = nhg->num_nh;

	for (i = 0; i < num_nh; ++i) {
		struct nh_grp_entry *nhge = &nhg->nh_entries[i];

		if (FUNC0(!nhge->nh))
			continue;

		FUNC1(&nhge->nh_list);
		FUNC2(nhge->nh);
		nhge->nh = NULL;
		nhg->num_nh--;
	}
}