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
struct switchdev_obj_port_vlan {int /*<<< orphan*/  flags; } ;
struct switchdev_obj {struct net_device* orig_dev; } ;
struct net_device {int dummy; } ;
struct dsa_port {struct dsa_port* cpu_dp; scalar_t__ bridge_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_VLAN_INFO_PVID ; 
 int EOPNOTSUPP ; 
 struct switchdev_obj_port_vlan* FUNC0 (struct switchdev_obj const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct dsa_port*,struct switchdev_obj_port_vlan*,struct switchdev_trans*) ; 
 struct dsa_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			      const struct switchdev_obj *obj,
			      struct switchdev_trans *trans)
{
	struct dsa_port *dp = FUNC3(dev);
	struct switchdev_obj_port_vlan vlan;
	int err;

	if (obj->orig_dev != dev)
		return -EOPNOTSUPP;

	if (dp->bridge_dev && !FUNC1(dp->bridge_dev))
		return 0;

	vlan = *FUNC0(obj);

	err = FUNC2(dp, &vlan, trans);
	if (err)
		return err;

	/* We need the dedicated CPU port to be a member of the VLAN as well.
	 * Even though drivers often handle CPU membership in special ways,
	 * it doesn't make sense to program a PVID, so clear this flag.
	 */
	vlan.flags &= ~BRIDGE_VLAN_INFO_PVID;

	err = FUNC2(dp->cpu_dp, &vlan, trans);
	if (err)
		return err;

	return 0;
}