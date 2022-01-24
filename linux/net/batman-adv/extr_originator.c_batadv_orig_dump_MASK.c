#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; TYPE_1__* skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct batadv_priv {TYPE_3__* algo_ops; } ;
struct batadv_hard_iface {scalar_t__ if_status; struct net_device* soft_iface; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dump ) (struct sk_buff*,struct netlink_callback*,struct batadv_priv*,struct batadv_hard_iface*) ;} ;
struct TYPE_6__ {TYPE_2__ orig; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_HARD_IFINDEX ; 
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 struct batadv_hard_iface* BATADV_IF_DEFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 struct batadv_hard_iface* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct batadv_priv* FUNC7 (struct net_device*) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct netlink_callback*,struct batadv_priv*,struct batadv_hard_iface*) ; 

int FUNC10(struct sk_buff *msg, struct netlink_callback *cb)
{
	struct net *net = FUNC8(cb->skb->sk);
	struct net_device *soft_iface;
	struct net_device *hard_iface = NULL;
	struct batadv_hard_iface *hardif = BATADV_IF_DEFAULT;
	struct batadv_priv *bat_priv;
	struct batadv_hard_iface *primary_if = NULL;
	int ret;
	int ifindex, hard_ifindex;

	ifindex = FUNC2(cb->nlh, BATADV_ATTR_MESH_IFINDEX);
	if (!ifindex)
		return -EINVAL;

	soft_iface = FUNC5(net, ifindex);
	if (!soft_iface || !FUNC4(soft_iface)) {
		ret = -ENODEV;
		goto out;
	}

	bat_priv = FUNC7(soft_iface);

	primary_if = FUNC3(bat_priv);
	if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
		ret = -ENOENT;
		goto out;
	}

	hard_ifindex = FUNC2(cb->nlh,
						  BATADV_ATTR_HARD_IFINDEX);
	if (hard_ifindex) {
		hard_iface = FUNC5(net, hard_ifindex);
		if (hard_iface)
			hardif = FUNC0(hard_iface);

		if (!hardif) {
			ret = -ENODEV;
			goto out;
		}

		if (hardif->soft_iface != soft_iface) {
			ret = -ENOENT;
			goto out;
		}
	}

	if (!bat_priv->algo_ops->orig.dump) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	bat_priv->algo_ops->orig.dump(msg, cb, bat_priv, hardif);

	ret = msg->len;

 out:
	if (hardif)
		FUNC1(hardif);
	if (hard_iface)
		FUNC6(hard_iface);
	if (primary_if)
		FUNC1(primary_if);
	if (soft_iface)
		FUNC6(soft_iface);

	return ret;
}