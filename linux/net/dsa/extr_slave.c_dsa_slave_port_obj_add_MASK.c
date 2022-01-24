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
struct switchdev_trans {int dummy; } ;
struct switchdev_obj {int id; struct net_device* orig_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {struct dsa_port* cpu_dp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_OBJ_ID_HOST_MDB 130 
#define  SWITCHDEV_OBJ_ID_PORT_MDB 129 
#define  SWITCHDEV_OBJ_ID_PORT_VLAN 128 
 int /*<<< orphan*/  FUNC0 (struct switchdev_obj const*) ; 
 int FUNC1 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 struct dsa_port* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct switchdev_obj const*,struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				  const struct switchdev_obj *obj,
				  struct switchdev_trans *trans,
				  struct netlink_ext_ack *extack)
{
	struct dsa_port *dp = FUNC2(dev);
	int err;

	/* For the prepare phase, ensure the full set of changes is feasable in
	 * one go in order to signal a failure properly. If an operation is not
	 * supported, return -EOPNOTSUPP.
	 */

	switch (obj->id) {
	case SWITCHDEV_OBJ_ID_PORT_MDB:
		if (obj->orig_dev != dev)
			return -EOPNOTSUPP;
		err = FUNC1(dp, FUNC0(obj), trans);
		break;
	case SWITCHDEV_OBJ_ID_HOST_MDB:
		/* DSA can directly translate this to a normal MDB add,
		 * but on the CPU port.
		 */
		err = FUNC1(dp->cpu_dp, FUNC0(obj),
				       trans);
		break;
	case SWITCHDEV_OBJ_ID_PORT_VLAN:
		err = FUNC3(dev, obj, trans);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}