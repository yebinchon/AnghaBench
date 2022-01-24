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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct dsa_switch {int /*<<< orphan*/  slave_mii_bus; } ;
struct dsa_port {int /*<<< orphan*/  pl; struct dsa_switch* ds; } ;

/* Variables and functions */
 int ENODEV ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *slave_dev, int addr)
{
	struct dsa_port *dp = FUNC0(slave_dev);
	struct dsa_switch *ds = dp->ds;

	slave_dev->phydev = FUNC1(ds->slave_mii_bus, addr);
	if (!slave_dev->phydev) {
		FUNC2(slave_dev, "no phy at %d\n", addr);
		return -ENODEV;
	}

	return FUNC3(dp->pl, slave_dev->phydev);
}