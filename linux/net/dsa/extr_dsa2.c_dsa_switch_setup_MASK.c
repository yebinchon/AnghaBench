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
struct dsa_switch {int /*<<< orphan*/ * devlink; int /*<<< orphan*/  slave_mii_bus; int /*<<< orphan*/  dev; TYPE_1__* ops; int /*<<< orphan*/  phys_mii_mask; } ;
struct TYPE_2__ {int (* setup ) (struct dsa_switch*) ;scalar_t__ phy_read; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsa_devlink_ops ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switch*) ; 
 int FUNC6 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC8 (struct dsa_switch*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dsa_switch*) ; 

__attribute__((used)) static int FUNC11(struct dsa_switch *ds)
{
	int err = 0;

	/* Initialize ds->phys_mii_mask before registering the slave MDIO bus
	 * driver and before ops->setup() has run, since the switch drivers and
	 * the slave MDIO bus driver rely on these values for probing PHY
	 * devices or not
	 */
	ds->phys_mii_mask |= FUNC8(ds);

	/* Add the switch to devlink before calling setup, so that setup can
	 * add dpipe tables
	 */
	ds->devlink = FUNC0(&dsa_devlink_ops, 0);
	if (!ds->devlink)
		return -ENOMEM;

	err = FUNC2(ds->devlink, ds->dev);
	if (err)
		goto free_devlink;

	err = FUNC6(ds);
	if (err)
		goto unregister_devlink;

	err = ds->ops->setup(ds);
	if (err < 0)
		goto unregister_notifier;

	if (!ds->slave_mii_bus && ds->ops->phy_read) {
		ds->slave_mii_bus = FUNC4(ds->dev);
		if (!ds->slave_mii_bus) {
			err = -ENOMEM;
			goto unregister_notifier;
		}

		FUNC5(ds);

		err = FUNC9(ds->slave_mii_bus);
		if (err < 0)
			goto unregister_notifier;
	}

	return 0;

unregister_notifier:
	FUNC7(ds);
unregister_devlink:
	FUNC3(ds->devlink);
free_devlink:
	FUNC1(ds->devlink);
	ds->devlink = NULL;

	return err;
}