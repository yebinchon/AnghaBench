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
struct net_device {int dummy; } ;
struct dsa_port {scalar_t__ bridge_dev; } ;
struct bridge_vlan_info {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct bridge_vlan_info*) ; 
 int FUNC2 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 struct dsa_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, __be16 proto,
				      u16 vid)
{
	struct dsa_port *dp = FUNC3(dev);
	struct bridge_vlan_info info;
	int ret;

	/* Check for a possible bridge VLAN entry now since there is no
	 * need to emulate the switchdev prepare + commit phase.
	 */
	if (dp->bridge_dev) {
		if (!FUNC0(dp->bridge_dev))
			return 0;

		/* br_vlan_get_info() returns -EINVAL or -ENOENT if the
		 * device, respectively the VID is not found, returning
		 * 0 means success, which is a failure for us here.
		 */
		ret = FUNC1(dp->bridge_dev, vid, &info);
		if (ret == 0)
			return -EBUSY;
	}

	/* Do not deprogram the CPU port as it may be shared with other user
	 * ports which can be members of this VLAN as well.
	 */
	return FUNC2(dp, vid);
}