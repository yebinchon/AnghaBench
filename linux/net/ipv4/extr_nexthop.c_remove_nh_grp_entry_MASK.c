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
struct nh_grp_entry {int /*<<< orphan*/  nh_parent; struct nexthop* nh; int /*<<< orphan*/  nh_list; int /*<<< orphan*/  weight; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  grp_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_NEWNEXTHOP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct nexthop*) ; 
 int /*<<< orphan*/  FUNC5 (struct nh_group*) ; 

__attribute__((used)) static void FUNC6(struct nh_grp_entry *nhge,
				struct nh_group *nhg,
				struct nl_info *nlinfo)
{
	struct nexthop *nh = nhge->nh;
	struct nh_grp_entry *nhges;
	bool found = false;
	int i;

	FUNC0(!nh);

	nhges = nhg->nh_entries;
	for (i = 0; i < nhg->num_nh; ++i) {
		if (found) {
			nhges[i-1].nh = nhges[i].nh;
			nhges[i-1].weight = nhges[i].weight;
			FUNC2(&nhges[i].nh_list);
			FUNC1(&nhges[i-1].nh_list, &nhges[i-1].nh->grp_list);
		} else if (nhg->nh_entries[i].nh == nh) {
			found = true;
		}
	}

	if (FUNC0(!found))
		return;

	nhg->num_nh--;
	nhg->nh_entries[nhg->num_nh].nh = NULL;

	FUNC5(nhg);

	FUNC4(nh);

	if (nlinfo)
		FUNC3(RTM_NEWNEXTHOP, nhge->nh_parent, nlinfo);
}