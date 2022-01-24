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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct batadv_hard_iface {scalar_t__ soft_iface; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct batadv_hard_iface*,struct net*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 struct net* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				   struct net_device *slave_dev,
				   struct netlink_ext_ack *extack)
{
	struct batadv_hard_iface *hard_iface;
	struct net *net = FUNC3(dev);
	int ret = -EINVAL;

	hard_iface = FUNC1(slave_dev);
	if (!hard_iface || hard_iface->soft_iface)
		goto out;

	ret = FUNC0(hard_iface, net, dev->name);

out:
	if (hard_iface)
		FUNC2(hard_iface);
	return ret;
}