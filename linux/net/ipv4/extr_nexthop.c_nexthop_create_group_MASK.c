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
struct nlattr {int dummy; } ;
struct nh_info {scalar_t__ family; } ;
struct nh_group {int is_group; int num_nh; int has_v4; int mpath; TYPE_1__* nh_entries; int /*<<< orphan*/  nh_grp; int /*<<< orphan*/  grp_list; int /*<<< orphan*/  nh_info; } ;
struct nh_config {scalar_t__ nh_grp_type; struct nlattr* nh_grp; } ;
struct nexthop_grp {scalar_t__ weight; int /*<<< orphan*/  id; } ;
struct nexthop {int is_group; int num_nh; int has_v4; int mpath; TYPE_1__* nh_entries; int /*<<< orphan*/  nh_grp; int /*<<< orphan*/  grp_list; int /*<<< orphan*/  nh_info; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct nh_group* nh; struct nh_group* nh_parent; int /*<<< orphan*/  nh_list; scalar_t__ weight; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nh_group* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NEXTHOP_GRP_TYPE_MPATH ; 
 int /*<<< orphan*/  FUNC1 (struct nh_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nh_group* FUNC3 () ; 
 struct nh_group* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nh_group*) ; 
 struct nh_group* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct nh_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct nh_group*) ; 
 struct nexthop_grp* FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nh_group*) ; 
 struct nh_info* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nexthop *FUNC13(struct net *net,
					    struct nh_config *cfg)
{
	struct nlattr *grps_attr = cfg->nh_grp;
	struct nexthop_grp *entry = FUNC9(grps_attr);
	struct nh_group *nhg;
	struct nexthop *nh;
	int i;

	nh = FUNC3();
	if (!nh)
		return FUNC0(-ENOMEM);

	nh->is_group = 1;

	nhg = FUNC6(FUNC10(grps_attr) / sizeof(*entry));
	if (!nhg) {
		FUNC1(nh);
		return FUNC0(-ENOMEM);
	}

	for (i = 0; i < nhg->num_nh; ++i) {
		struct nexthop *nhe;
		struct nh_info *nhi;

		nhe = FUNC4(net, entry[i].id);
		if (!FUNC5(nhe))
			goto out_no_nh;

		nhi = FUNC12(nhe->nh_info);
		if (nhi->family == AF_INET)
			nhg->has_v4 = true;

		nhg->nh_entries[i].nh = nhe;
		nhg->nh_entries[i].weight = entry[i].weight + 1;
		FUNC2(&nhg->nh_entries[i].nh_list, &nhe->grp_list);
		nhg->nh_entries[i].nh_parent = nh;
	}

	if (cfg->nh_grp_type == NEXTHOP_GRP_TYPE_MPATH) {
		nhg->mpath = 1;
		FUNC8(nhg);
	}

	FUNC11(nh->nh_grp, nhg);

	return nh;

out_no_nh:
	for (; i >= 0; --i)
		FUNC7(nhg->nh_entries[i].nh);

	FUNC1(nhg);
	FUNC1(nh);

	return FUNC0(-ENOENT);
}