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
struct br_ip {int dummy; } ;
struct net_bridge_mdb_entry {int /*<<< orphan*/  mdb_node; int /*<<< orphan*/  rhnode; int /*<<< orphan*/  timer; struct br_ip addr; struct net_bridge* br; } ;
struct TYPE_2__ {int /*<<< orphan*/  nelems; } ;
struct net_bridge {scalar_t__ hash_max; int /*<<< orphan*/  mdb_list; TYPE_1__ mdb_hash_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_MULTICAST_ENABLED ; 
 int E2BIG ; 
 int ENOMEM ; 
 struct net_bridge_mdb_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct net_bridge_mdb_entry* FUNC2 (struct net_bridge*,struct br_ip*) ; 
 int /*<<< orphan*/  br_mdb_rht_params ; 
 int /*<<< orphan*/  br_multicast_group_expired ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_mdb_entry*) ; 
 struct net_bridge_mdb_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

struct net_bridge_mdb_entry *FUNC10(struct net_bridge *br,
						    struct br_ip *group)
{
	struct net_bridge_mdb_entry *mp;
	int err;

	mp = FUNC2(br, group);
	if (mp)
		return mp;

	if (FUNC1(&br->mdb_hash_tbl.nelems) >= br->hash_max) {
		FUNC3(br, BROPT_MULTICAST_ENABLED, false);
		return FUNC0(-E2BIG);
	}

	mp = FUNC6(sizeof(*mp), GFP_ATOMIC);
	if (FUNC9(!mp))
		return FUNC0(-ENOMEM);

	mp->br = br;
	mp->addr = *group;
	FUNC8(&mp->timer, br_multicast_group_expired, 0);
	err = FUNC7(&br->mdb_hash_tbl, &mp->rhnode,
					    br_mdb_rht_params);
	if (err) {
		FUNC5(mp);
		mp = FUNC0(err);
	} else {
		FUNC4(&mp->mdb_node, &br->mdb_list);
	}

	return mp;
}