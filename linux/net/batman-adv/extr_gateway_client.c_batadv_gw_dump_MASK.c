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
struct batadv_hard_iface {scalar_t__ if_status; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dump ) (struct sk_buff*,struct netlink_callback*,struct batadv_priv*) ;} ;
struct TYPE_6__ {TYPE_2__ gw; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hard_iface*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct batadv_priv* FUNC6 (struct net_device*) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct netlink_callback*,struct batadv_priv*) ; 

int FUNC9(struct sk_buff *msg, struct netlink_callback *cb)
{
	struct batadv_hard_iface *primary_if = NULL;
	struct net *net = FUNC7(cb->skb->sk);
	struct net_device *soft_iface;
	struct batadv_priv *bat_priv;
	int ifindex;
	int ret;

	ifindex = FUNC1(cb->nlh,
					     BATADV_ATTR_MESH_IFINDEX);
	if (!ifindex)
		return -EINVAL;

	soft_iface = FUNC4(net, ifindex);
	if (!soft_iface || !FUNC3(soft_iface)) {
		ret = -ENODEV;
		goto out;
	}

	bat_priv = FUNC6(soft_iface);

	primary_if = FUNC2(bat_priv);
	if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
		ret = -ENOENT;
		goto out;
	}

	if (!bat_priv->algo_ops->gw.dump) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	bat_priv->algo_ops->gw.dump(msg, cb, bat_priv);

	ret = msg->len;

out:
	if (primary_if)
		FUNC0(primary_if);
	if (soft_iface)
		FUNC5(soft_iface);

	return ret;
}