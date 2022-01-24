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
struct dsa_switch {struct dsa_port* ports; } ;
struct dsa_port {struct dsa_port* cpu_dp; int /*<<< orphan*/  slave; } ;
struct bridge_vlan_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_VLAN_INFO_PVID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bridge_vlan_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int) ; 
 int FUNC2 (struct dsa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dsa_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dsa_switch *ds, int port, u16 vid,
			       u16 flags, bool enabled)
{
	struct dsa_port *dp = &ds->ports[port];
	struct bridge_vlan_info vinfo;
	int err;

	if (enabled)
		return FUNC2(dp, vid, flags);

	err = FUNC3(dp, vid);
	if (err < 0)
		return err;

	/* Nothing to restore from the bridge for a non-user port.
	 * The CPU port VLANs are restored implicitly with the user ports,
	 * similar to how the bridge does in dsa_slave_vlan_add and
	 * dsa_slave_vlan_del.
	 */
	if (!FUNC1(ds, port))
		return 0;

	err = FUNC0(dp->slave, vid, &vinfo);
	/* Couldn't determine bridge attributes for this vid,
	 * it means the bridge had not configured it.
	 */
	if (err < 0)
		return 0;

	/* Restore the VID from the bridge */
	err = FUNC2(dp, vid, vinfo.flags);
	if (err < 0)
		return err;

	vinfo.flags &= ~BRIDGE_VLAN_INFO_PVID;

	return FUNC2(dp->cpu_dp, vid, vinfo.flags);
}