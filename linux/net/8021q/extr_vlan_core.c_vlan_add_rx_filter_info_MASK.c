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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {TYPE_1__* netdev_ops; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int (* ndo_vlan_rx_add_vid ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, __be16 proto, u16 vid)
{
	if (!FUNC2(dev, proto))
		return 0;

	if (FUNC0(dev))
		return dev->netdev_ops->ndo_vlan_rx_add_vid(dev, proto, vid);
	else
		return -ENODEV;
}