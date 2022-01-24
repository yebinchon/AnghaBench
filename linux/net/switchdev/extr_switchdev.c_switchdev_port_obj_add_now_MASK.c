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
struct switchdev_trans {int ph_prepare; } ;
struct switchdev_obj {int /*<<< orphan*/  id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SWITCHDEV_PORT_OBJ_ADD ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct net_device*,struct switchdev_obj const*,struct switchdev_trans*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				      const struct switchdev_obj *obj,
				      struct netlink_ext_ack *extack)
{
	struct switchdev_trans trans;
	int err;

	FUNC0();

	/* Phase I: prepare for obj add. Driver/device should fail
	 * here if there are going to be issues in the commit phase,
	 * such as lack of resources or support.  The driver/device
	 * should reserve resources needed for the commit phase here,
	 * but should not commit the obj.
	 */

	trans.ph_prepare = true;
	err = FUNC2(SWITCHDEV_PORT_OBJ_ADD,
					dev, obj, &trans, extack);
	if (err)
		return err;

	/* Phase II: commit obj add.  This cannot fail as a fault
	 * of driver/device.  If it does, it's a bug in the driver/device
	 * because the driver said everythings was OK in phase I.
	 */

	trans.ph_prepare = false;
	err = FUNC2(SWITCHDEV_PORT_OBJ_ADD,
					dev, obj, &trans, extack);
	FUNC1(err, "%s: Commit of object (id=%d) failed.\n", dev->name, obj->id);

	return err;
}