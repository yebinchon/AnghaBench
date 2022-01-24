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
struct nh_info {int family; int /*<<< orphan*/  fib6_nh; int /*<<< orphan*/  fib_nh; } ;
struct nh_grp_entry {struct nexthop* nh; int /*<<< orphan*/  upper_bound; } ;
struct nh_group {int num_nh; struct nh_grp_entry* nh_entries; } ;
struct nexthop {int /*<<< orphan*/  nh_info; int /*<<< orphan*/  nh_grp; int /*<<< orphan*/  is_group; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

struct nexthop *FUNC4(struct nexthop *nh, int hash)
{
	struct nexthop *rc = NULL;
	struct nh_group *nhg;
	int i;

	if (!nh->is_group)
		return nh;

	nhg = FUNC3(nh->nh_grp);
	for (i = 0; i < nhg->num_nh; ++i) {
		struct nh_grp_entry *nhge = &nhg->nh_entries[i];
		struct nh_info *nhi;

		if (hash > FUNC0(&nhge->upper_bound))
			continue;

		/* nexthops always check if it is good and does
		 * not rely on a sysctl for this behavior
		 */
		nhi = FUNC3(nhge->nh->nh_info);
		switch (nhi->family) {
		case AF_INET:
			if (FUNC1(&nhi->fib_nh))
				return nhge->nh;
			break;
		case AF_INET6:
			if (FUNC2(&nhi->fib6_nh))
				return nhge->nh;
			break;
		}

		if (!rc)
			rc = nhge->nh;
	}

	return rc;
}