#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct net_bridge_fdb_entry {int /*<<< orphan*/  rcu; int /*<<< orphan*/  rhnode; int /*<<< orphan*/  fdb_node; TYPE_2__ key; scalar_t__ is_static; } ;
struct net_bridge {int /*<<< orphan*/  fdb_hash_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTM_DELNEIGH ; 
 int /*<<< orphan*/  br_fdb_rht_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_fdb_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdb_rcu_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*,struct net_bridge_fdb_entry*) ; 

__attribute__((used)) static void FUNC6(struct net_bridge *br, struct net_bridge_fdb_entry *f,
		       bool swdev_notify)
{
	FUNC5(br, f);

	if (f->is_static)
		FUNC1(br, f->key.addr.addr);

	FUNC3(&f->fdb_node);
	FUNC4(&br->fdb_hash_tbl, &f->rhnode,
			       br_fdb_rht_params);
	FUNC2(br, f, RTM_DELNEIGH, swdev_notify);
	FUNC0(&f->rcu, fdb_rcu_free);
}