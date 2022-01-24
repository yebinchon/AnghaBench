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
struct net_device {int dummy; } ;
struct batadv_hard_iface {struct net_device* soft_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_IF_CLEANUP_KEEP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				   struct net_device *slave_dev)
{
	struct batadv_hard_iface *hard_iface;
	int ret = -EINVAL;

	hard_iface = FUNC1(slave_dev);

	if (!hard_iface || hard_iface->soft_iface != dev)
		goto out;

	FUNC0(hard_iface, BATADV_IF_CLEANUP_KEEP);
	ret = 0;

out:
	if (hard_iface)
		FUNC2(hard_iface);
	return ret;
}