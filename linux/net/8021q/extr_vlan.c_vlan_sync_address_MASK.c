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
struct vlan_dev_priv {int /*<<< orphan*/  real_dev_addr; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*,struct net_device*) ; 
 struct vlan_dev_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
			      struct net_device *vlandev)
{
	struct vlan_dev_priv *vlan = FUNC5(vlandev);

	/* May be called without an actual change */
	if (FUNC3(vlan->real_dev_addr, dev->dev_addr))
		return;

	/* vlan continues to inherit address of lower device */
	if (FUNC4(vlandev, dev))
		goto out;

	/* vlan address was different from the old address and is equal to
	 * the new address */
	if (!FUNC3(vlandev->dev_addr, vlan->real_dev_addr) &&
	    FUNC3(vlandev->dev_addr, dev->dev_addr))
		FUNC1(dev, vlandev->dev_addr);

	/* vlan address was equal to the old address and is different from
	 * the new address */
	if (FUNC3(vlandev->dev_addr, vlan->real_dev_addr) &&
	    !FUNC3(vlandev->dev_addr, dev->dev_addr))
		FUNC0(dev, vlandev->dev_addr);

out:
	FUNC2(vlan->real_dev_addr, dev->dev_addr);
}