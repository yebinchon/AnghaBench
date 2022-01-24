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
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {scalar_t__ added_by_external_learn; } ;
struct net_bridge {int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 struct net_bridge_fdb_entry* FUNC0 (struct net_bridge*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_fdb_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, struct net_bridge_port *p,
			      const unsigned char *addr, u16 vid,
			      bool swdev_notify)
{
	struct net_bridge_fdb_entry *fdb;
	int err = 0;

	FUNC2(&br->hash_lock);

	fdb = FUNC0(br, addr, vid);
	if (fdb && fdb->added_by_external_learn)
		FUNC1(br, fdb, swdev_notify);
	else
		err = -ENOENT;

	FUNC3(&br->hash_lock);

	return err;
}