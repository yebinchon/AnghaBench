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
struct phy_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC3 (struct device_node*) ; 

__attribute__((used)) static struct phy_device *FUNC4(struct dsa_port *dp)
{
	struct device_node *phy_dn;
	struct phy_device *phydev;

	phy_dn = FUNC2(dp->dn, "phy-handle", 0);
	if (!phy_dn)
		return NULL;

	phydev = FUNC3(phy_dn);
	if (!phydev) {
		FUNC1(phy_dn);
		return FUNC0(-EPROBE_DEFER);
	}

	FUNC1(phy_dn);
	return phydev;
}