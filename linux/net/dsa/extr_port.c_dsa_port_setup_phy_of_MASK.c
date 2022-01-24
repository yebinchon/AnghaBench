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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct dsa_switch {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* adjust_link ) (struct dsa_switch*,int,struct phy_device*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC3 (struct dsa_port*) ; 
 int FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*) ; 
 int FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dsa_switch*,int,struct phy_device*) ; 

__attribute__((used)) static int FUNC10(struct dsa_port *dp, bool enable)
{
	struct dsa_switch *ds = dp->ds;
	struct phy_device *phydev;
	int port = dp->index;
	int err = 0;

	phydev = FUNC3(dp);
	if (!phydev)
		return 0;

	if (FUNC0(phydev))
		return FUNC1(phydev);

	if (enable) {
		err = FUNC5(phydev);
		if (err < 0)
			goto err_put_dev;

		err = FUNC4(phydev);
		if (err < 0)
			goto err_put_dev;
	} else {
		err = FUNC6(phydev);
		if (err < 0)
			goto err_put_dev;
	}

	if (ds->ops->adjust_link)
		ds->ops->adjust_link(ds, port, phydev);

	FUNC2(ds->dev, "enabled port's phy: %s", FUNC7(phydev));

err_put_dev:
	FUNC8(&phydev->mdio.dev);
	return err;
}