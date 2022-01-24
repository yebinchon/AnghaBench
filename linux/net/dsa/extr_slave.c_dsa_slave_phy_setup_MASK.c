#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct dsa_switch {scalar_t__ slave_mii_bus; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * dev; } ;
struct dsa_port {int /*<<< orphan*/  pl; int /*<<< orphan*/  index; TYPE_2__ pl_config; struct dsa_switch* ds; struct device_node* dn; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_phy_flags ) (struct dsa_switch*,int /*<<< orphan*/ ) ;scalar_t__ phylink_fixed_state; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHYLINK_NETDEV ; 
 int PHY_INTERFACE_MODE_NA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_port_phylink_mac_ops ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_slave_phylink_fixed_state ; 
 struct dsa_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dsa_switch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *slave_dev)
{
	struct dsa_port *dp = FUNC3(slave_dev);
	struct device_node *port_dn = dp->dn;
	struct dsa_switch *ds = dp->ds;
	u32 phy_flags = 0;
	int mode, ret;

	mode = FUNC6(port_dn);
	if (mode < 0)
		mode = PHY_INTERFACE_MODE_NA;

	dp->pl_config.dev = &slave_dev->dev;
	dp->pl_config.type = PHYLINK_NETDEV;

	dp->pl = FUNC7(&dp->pl_config, FUNC5(port_dn), mode,
				&dsa_port_phylink_mac_ops);
	if (FUNC0(dp->pl)) {
		FUNC4(slave_dev,
			   "error creating PHYLINK: %ld\n", FUNC1(dp->pl));
		return FUNC1(dp->pl);
	}

	/* Register only if the switch provides such a callback, since this
	 * callback takes precedence over polling the link GPIO in PHYLINK
	 * (see phylink_get_fixed_state).
	 */
	if (ds->ops->phylink_fixed_state)
		FUNC9(dp->pl, dsa_slave_phylink_fixed_state);

	if (ds->ops->get_phy_flags)
		phy_flags = ds->ops->get_phy_flags(ds, dp->index);

	ret = FUNC10(dp->pl, port_dn, phy_flags);
	if (ret == -ENODEV && ds->slave_mii_bus) {
		/* We could not connect to a designated PHY or SFP, so try to
		 * use the switch internal MDIO bus instead
		 */
		ret = FUNC2(slave_dev, dp->index);
		if (ret) {
			FUNC4(slave_dev,
				   "failed to connect to port %d: %d\n",
				   dp->index, ret);
			FUNC8(dp->pl);
			return ret;
		}
	}

	return ret;
}