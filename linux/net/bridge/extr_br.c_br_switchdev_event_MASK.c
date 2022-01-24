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
struct switchdev_notifier_fdb_info {int offloaded; int /*<<< orphan*/  vid; int /*<<< orphan*/  addr; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  SWITCHDEV_FDB_ADD_TO_BRIDGE 130 
#define  SWITCHDEV_FDB_DEL_TO_BRIDGE 129 
#define  SWITCHDEV_FDB_OFFLOADED 128 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct net_bridge_port* FUNC3 (struct net_device*) ; 
 int FUNC4 (int) ; 
 struct net_device* FUNC5 (void*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *unused,
			      unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC5(ptr);
	struct net_bridge_port *p;
	struct net_bridge *br;
	struct switchdev_notifier_fdb_info *fdb_info;
	int err = NOTIFY_DONE;

	p = FUNC3(dev);
	if (!p)
		goto out;

	br = p->br;

	switch (event) {
	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
		fdb_info = ptr;
		err = FUNC0(br, p, fdb_info->addr,
						fdb_info->vid, false);
		if (err) {
			err = FUNC4(err);
			break;
		}
		FUNC2(br, p, fdb_info->addr,
				     fdb_info->vid, true);
		break;
	case SWITCHDEV_FDB_DEL_TO_BRIDGE:
		fdb_info = ptr;
		err = FUNC1(br, p, fdb_info->addr,
						fdb_info->vid, false);
		if (err)
			err = FUNC4(err);
		break;
	case SWITCHDEV_FDB_OFFLOADED:
		fdb_info = ptr;
		FUNC2(br, p, fdb_info->addr,
				     fdb_info->vid, fdb_info->offloaded);
		break;
	}

out:
	return err;
}