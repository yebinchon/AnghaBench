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
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 size_t BATADV_ATTR_MESH_IFINDEX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *
FUNC5(struct net *net, struct genl_info *info)
{
	struct net_device *soft_iface;
	int ifindex;

	if (!info->attrs[BATADV_ATTR_MESH_IFINDEX])
		return FUNC0(-EINVAL);

	ifindex = FUNC4(info->attrs[BATADV_ATTR_MESH_IFINDEX]);

	soft_iface = FUNC2(net, ifindex);
	if (!soft_iface)
		return FUNC0(-ENODEV);

	if (!FUNC1(soft_iface))
		goto err_put_softif;

	return soft_iface;

err_put_softif:
	FUNC3(soft_iface);

	return FUNC0(-EINVAL);
}