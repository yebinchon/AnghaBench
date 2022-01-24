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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ethtool_eee {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int /*<<< orphan*/  pl; int /*<<< orphan*/  index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_mac_eee ) (struct dsa_switch*,int /*<<< orphan*/ ,struct ethtool_eee*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 
 int FUNC2 (struct dsa_switch*,int /*<<< orphan*/ ,struct ethtool_eee*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_eee *e)
{
	struct dsa_port *dp = FUNC0(dev);
	struct dsa_switch *ds = dp->ds;
	int ret;

	/* Port's PHY and MAC both need to be EEE capable */
	if (!dev->phydev || !dp->pl)
		return -ENODEV;

	if (!ds->ops->get_mac_eee)
		return -EOPNOTSUPP;

	ret = ds->ops->get_mac_eee(ds, dp->index, e);
	if (ret)
		return ret;

	return FUNC1(dp->pl, e);
}