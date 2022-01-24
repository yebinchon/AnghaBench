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
struct dsa_switch {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
struct dsa_port {int /*<<< orphan*/  pl; TYPE_1__ pl_config; struct device_node* dn; struct dsa_switch* ds; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHYLINK_DEV ; 
 int PHY_INTERFACE_MODE_NA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_port_phylink_mac_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct dsa_port *dp)
{
	struct dsa_switch *ds = dp->ds;
	struct device_node *port_dn = dp->dn;
	int mode, err;

	mode = FUNC3(port_dn);
	if (mode < 0)
		mode = PHY_INTERFACE_MODE_NA;

	dp->pl_config.dev = ds->dev;
	dp->pl_config.type = PHYLINK_DEV;

	dp->pl = FUNC4(&dp->pl_config, FUNC2(port_dn),
				mode, &dsa_port_phylink_mac_ops);
	if (FUNC0(dp->pl)) {
		FUNC8("error creating PHYLINK: %ld\n", FUNC1(dp->pl));
		return FUNC1(dp->pl);
	}

	err = FUNC6(dp->pl, port_dn, 0);
	if (err && err != -ENODEV) {
		FUNC8("could not attach to PHY: %d\n", err);
		goto err_phy_connect;
	}

	FUNC9();
	FUNC7(dp->pl);
	FUNC10();

	return 0;

err_phy_connect:
	FUNC5(dp->pl);
	return err;
}