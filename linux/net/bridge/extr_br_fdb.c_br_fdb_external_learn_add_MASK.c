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
struct net_bridge_fdb_entry {int added_by_user; int added_by_external_learn; void* used; struct net_bridge_port* dst; void* updated; } ;
struct net_bridge {int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 struct net_bridge_fdb_entry* FUNC0 (struct net_bridge*,unsigned char const*,int /*<<< orphan*/ ) ; 
 struct net_bridge_fdb_entry* FUNC1 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_fdb_entry*,int /*<<< orphan*/ ,int) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_bridge *br, struct net_bridge_port *p,
			      const unsigned char *addr, u16 vid,
			      bool swdev_notify)
{
	struct net_bridge_fdb_entry *fdb;
	bool modified = false;
	int err = 0;

	FUNC5(br, p, addr, vid);

	FUNC3(&br->hash_lock);

	fdb = FUNC0(br, addr, vid);
	if (!fdb) {
		fdb = FUNC1(br, p, addr, vid, 0, 0);
		if (!fdb) {
			err = -ENOMEM;
			goto err_unlock;
		}
		if (swdev_notify)
			fdb->added_by_user = 1;
		fdb->added_by_external_learn = 1;
		FUNC2(br, fdb, RTM_NEWNEIGH, swdev_notify);
	} else {
		fdb->updated = jiffies;

		if (fdb->dst != p) {
			fdb->dst = p;
			modified = true;
		}

		if (fdb->added_by_external_learn) {
			/* Refresh entry */
			fdb->used = jiffies;
		} else if (!fdb->added_by_user) {
			/* Take over SW learned entry */
			fdb->added_by_external_learn = 1;
			modified = true;
		}

		if (swdev_notify)
			fdb->added_by_user = 1;

		if (modified)
			FUNC2(br, fdb, RTM_NEWNEIGH, swdev_notify);
	}

err_unlock:
	FUNC4(&br->hash_lock);

	return err;
}