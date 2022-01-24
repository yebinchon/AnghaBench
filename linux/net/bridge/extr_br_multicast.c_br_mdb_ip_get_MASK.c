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
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  mdb_hash_tbl; int /*<<< orphan*/  multicast_lock; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  br_mdb_rht_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct net_bridge_mdb_entry* FUNC3 (int /*<<< orphan*/ *,struct br_ip*,int /*<<< orphan*/ ) ; 

struct net_bridge_mdb_entry *FUNC4(struct net_bridge *br,
					   struct br_ip *dst)
{
	struct net_bridge_mdb_entry *ent;

	FUNC0(&br->multicast_lock);

	FUNC1();
	ent = FUNC3(&br->mdb_hash_tbl, dst, br_mdb_rht_params);
	FUNC2();

	return ent;
}