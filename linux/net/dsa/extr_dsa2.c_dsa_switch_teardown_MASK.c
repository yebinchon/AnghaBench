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
struct dsa_switch {int /*<<< orphan*/ * devlink; TYPE_1__* ops; scalar_t__ slave_mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown ) (struct dsa_switch*) ;scalar_t__ phy_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switch*) ; 

__attribute__((used)) static void FUNC5(struct dsa_switch *ds)
{
	if (ds->slave_mii_bus && ds->ops->phy_read)
		FUNC3(ds->slave_mii_bus);

	FUNC2(ds);

	if (ds->ops->teardown)
		ds->ops->teardown(ds);

	if (ds->devlink) {
		FUNC1(ds->devlink);
		FUNC0(ds->devlink);
		ds->devlink = NULL;
	}

}