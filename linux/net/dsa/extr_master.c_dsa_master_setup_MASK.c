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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_1__ dev; struct dsa_port* dsa_ptr; } ;
struct dsa_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dsa_group ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct dsa_port*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct net_device *dev, struct dsa_port *cpu_dp)
{
	int ret;

	FUNC4(dev,  cpu_dp);

	/* If we use a tagging format that doesn't have an ethertype
	 * field, make sure that all packets from this point on get
	 * sent to the tag format's receive function.
	 */
	FUNC6();

	dev->dsa_ptr = cpu_dp;
	ret = FUNC0(dev);
	if (ret)
		return ret;

	ret = FUNC2(dev);
	if (ret)
		goto out_err_ethtool_teardown;

	ret = FUNC5(&dev->dev.kobj, &dsa_group);
	if (ret)
		goto out_err_ndo_teardown;

	return ret;

out_err_ndo_teardown:
	FUNC3(dev);
out_err_ethtool_teardown:
	FUNC1(dev);
	return ret;
}