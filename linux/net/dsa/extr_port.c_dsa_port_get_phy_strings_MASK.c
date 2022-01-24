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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct dsa_port {int /*<<< orphan*/  dn; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 struct phy_device* FUNC1 (struct dsa_port*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dsa_port *dp, uint8_t *data)
{
	struct phy_device *phydev;
	int ret = -EOPNOTSUPP;

	if (FUNC2(dp->dn))
		return ret;

	phydev = FUNC1(dp);
	if (FUNC0(phydev))
		return ret;

	ret = FUNC3(phydev, data);
	FUNC4(&phydev->mdio.dev);

	return ret;
}