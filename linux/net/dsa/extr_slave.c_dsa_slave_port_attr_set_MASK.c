#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mrouter; int /*<<< orphan*/  brport_flags; int /*<<< orphan*/  ageing_time; int /*<<< orphan*/  vlan_filtering; int /*<<< orphan*/  stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  cpu_dp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME 133 
#define  SWITCHDEV_ATTR_ID_BRIDGE_MROUTER 132 
#define  SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING 131 
#define  SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS 130 
#define  SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS 129 
#define  SWITCHDEV_ATTR_ID_PORT_STP_STATE 128 
 int FUNC0 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC1 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC3 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC4 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC5 (struct dsa_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 struct dsa_port* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				   const struct switchdev_attr *attr,
				   struct switchdev_trans *trans)
{
	struct dsa_port *dp = FUNC6(dev);
	int ret;

	switch (attr->id) {
	case SWITCHDEV_ATTR_ID_PORT_STP_STATE:
		ret = FUNC4(dp, attr->u.stp_state, trans);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
		ret = FUNC5(dp, attr->u.vlan_filtering,
					      trans);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
		ret = FUNC0(dp, attr->u.ageing_time, trans);
		break;
	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
		ret = FUNC3(dp, attr->u.brport_flags,
						trans);
		break;
	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
		ret = FUNC1(dp, attr->u.brport_flags, trans);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_MROUTER:
		ret = FUNC2(dp->cpu_dp, attr->u.mrouter, trans);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	return ret;
}