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
struct timer_list {int dummy; } ;
struct net_bridge_mdb_entry {int /*<<< orphan*/  mdb_node; int /*<<< orphan*/  rhnode; scalar_t__ ports; int /*<<< orphan*/  timer; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  mdb_hash_tbl; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  br_mdb_rht_params ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_mdb_entry*,int) ; 
 struct net_bridge_mdb_entry* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge_mdb_entry*,int /*<<< orphan*/ ) ; 
 struct net_bridge_mdb_entry* mp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct net_bridge_mdb_entry *mp = FUNC1(mp, t, timer);
	struct net_bridge *br = mp->br;

	FUNC6(&br->multicast_lock);
	if (!FUNC4(br->dev) || FUNC8(&mp->timer))
		goto out;

	FUNC0(mp, true);

	if (mp->ports)
		goto out;

	FUNC5(&br->mdb_hash_tbl, &mp->rhnode,
			       br_mdb_rht_params);
	FUNC2(&mp->mdb_node);

	FUNC3(mp, rcu);

out:
	FUNC7(&br->multicast_lock);
}