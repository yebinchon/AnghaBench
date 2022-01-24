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
struct netlink_callback {int* args; int /*<<< orphan*/  nlh; TYPE_3__* skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {struct batadv_hashtable* claim_hash; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_hashtable {int size; } ;
struct batadv_hard_iface {scalar_t__ if_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {int portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 TYPE_2__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,struct netlink_callback*,struct batadv_hard_iface*,struct batadv_hashtable*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC4 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct batadv_priv* FUNC8 (struct net_device*) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct sk_buff *msg, struct netlink_callback *cb)
{
	struct batadv_hard_iface *primary_if = NULL;
	int portid = FUNC0(cb->skb).portid;
	struct net *net = FUNC9(cb->skb->sk);
	struct net_device *soft_iface;
	struct batadv_hashtable *hash;
	struct batadv_priv *bat_priv;
	int bucket = cb->args[0];
	int idx = cb->args[1];
	int ifindex;
	int ret = 0;

	ifindex = FUNC3(cb->nlh,
					     BATADV_ATTR_MESH_IFINDEX);
	if (!ifindex)
		return -EINVAL;

	soft_iface = FUNC6(net, ifindex);
	if (!soft_iface || !FUNC5(soft_iface)) {
		ret = -ENODEV;
		goto out;
	}

	bat_priv = FUNC8(soft_iface);
	hash = bat_priv->bla.claim_hash;

	primary_if = FUNC4(bat_priv);
	if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
		ret = -ENOENT;
		goto out;
	}

	while (bucket < hash->size) {
		if (FUNC1(msg, portid, cb, primary_if,
						 hash, bucket, &idx))
			break;
		bucket++;
	}

	cb->args[0] = bucket;
	cb->args[1] = idx;

	ret = msg->len;

out:
	if (primary_if)
		FUNC2(primary_if);

	if (soft_iface)
		FUNC7(soft_iface);

	return ret;
}