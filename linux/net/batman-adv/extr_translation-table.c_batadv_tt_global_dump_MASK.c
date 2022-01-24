#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; TYPE_4__* skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_5__ {struct batadv_hashtable* global_hash; } ;
struct batadv_priv {TYPE_1__ tt; } ;
struct batadv_hashtable {int size; struct hlist_head* table; } ;
struct batadv_hard_iface {scalar_t__ if_status; } ;
struct TYPE_8__ {int /*<<< orphan*/  sk; } ;
struct TYPE_7__ {int portid; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_MESH_IFINDEX ; 
 scalar_t__ BATADV_IF_ACTIVE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 TYPE_3__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct batadv_hard_iface* FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,struct batadv_priv*,struct hlist_head*,int*,int*) ; 
 struct net_device* FUNC6 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct batadv_priv* FUNC8 (struct net_device*) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct sk_buff *msg, struct netlink_callback *cb)
{
	struct net *net = FUNC9(cb->skb->sk);
	struct net_device *soft_iface;
	struct batadv_priv *bat_priv;
	struct batadv_hard_iface *primary_if = NULL;
	struct batadv_hashtable *hash;
	struct hlist_head *head;
	int ret;
	int ifindex;
	int bucket = cb->args[0];
	int idx = cb->args[1];
	int sub = cb->args[2];
	int portid = FUNC0(cb->skb).portid;

	ifindex = FUNC2(cb->nlh, BATADV_ATTR_MESH_IFINDEX);
	if (!ifindex)
		return -EINVAL;

	soft_iface = FUNC6(net, ifindex);
	if (!soft_iface || !FUNC4(soft_iface)) {
		ret = -ENODEV;
		goto out;
	}

	bat_priv = FUNC8(soft_iface);

	primary_if = FUNC3(bat_priv);
	if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
		ret = -ENOENT;
		goto out;
	}

	hash = bat_priv->tt.global_hash;

	while (bucket < hash->size) {
		head = &hash->table[bucket];

		if (FUNC5(msg, portid,
						 cb->nlh->nlmsg_seq, bat_priv,
						 head, &idx, &sub))
			break;

		bucket++;
	}

	ret = msg->len;

 out:
	if (primary_if)
		FUNC1(primary_if);
	if (soft_iface)
		FUNC7(soft_iface);

	cb->args[0] = bucket;
	cb->args[1] = idx;
	cb->args[2] = sub;

	return ret;
}