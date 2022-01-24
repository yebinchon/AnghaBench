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
typedef  int /*<<< orphan*/  vlan_id ;
struct vlan_dev_priv {int /*<<< orphan*/  real_dev; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_id; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GVRP_ATTR_VID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlan_dev_priv* FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  vlan_gvrp_app ; 

void FUNC3(const struct net_device *dev)
{
	const struct vlan_dev_priv *vlan = FUNC2(dev);
	__be16 vlan_id = FUNC1(vlan->vlan_id);

	if (vlan->vlan_proto != FUNC1(ETH_P_8021Q))
		return;
	FUNC0(vlan->real_dev, &vlan_gvrp_app,
			   &vlan_id, sizeof(vlan_id), GVRP_ATTR_VID);
}