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
struct batadv_priv {scalar_t__ soft_iface; } ;
struct batadv_hard_iface {scalar_t__ soft_iface; } ;

/* Variables and functions */
 size_t BATADV_ATTR_HARD_IFINDEX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct batadv_hard_iface* FUNC0 (int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 struct net_device* FUNC3 (struct net*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct batadv_hard_iface *
FUNC6(struct batadv_priv *bat_priv, struct net *net,
			    struct genl_info *info)
{
	struct batadv_hard_iface *hard_iface;
	struct net_device *hard_dev;
	unsigned int hardif_index;

	if (!info->attrs[BATADV_ATTR_HARD_IFINDEX])
		return FUNC0(-EINVAL);

	hardif_index = FUNC5(info->attrs[BATADV_ATTR_HARD_IFINDEX]);

	hard_dev = FUNC3(net, hardif_index);
	if (!hard_dev)
		return FUNC0(-ENODEV);

	hard_iface = FUNC1(hard_dev);
	if (!hard_iface)
		goto err_put_harddev;

	if (hard_iface->soft_iface != bat_priv->soft_iface)
		goto err_put_hardif;

	/* hard_dev is referenced by hard_iface and not needed here */
	FUNC4(hard_dev);

	return hard_iface;

err_put_hardif:
	FUNC2(hard_iface);
err_put_harddev:
	FUNC4(hard_dev);

	return FUNC0(-EINVAL);
}