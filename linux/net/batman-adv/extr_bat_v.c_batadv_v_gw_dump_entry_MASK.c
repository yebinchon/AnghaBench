#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct batadv_priv {int dummy; } ;
struct batadv_neigh_node {TYPE_4__* if_incoming; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  throughput; } ;
struct batadv_neigh_ifinfo {TYPE_2__ bat_v; } ;
struct batadv_gw_node {int /*<<< orphan*/  bandwidth_up; int /*<<< orphan*/  bandwidth_down; TYPE_5__* orig_node; } ;
struct TYPE_10__ {int /*<<< orphan*/  orig; } ;
struct TYPE_9__ {TYPE_3__* net_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_BANDWIDTH_DOWN ; 
 int /*<<< orphan*/  BATADV_ATTR_BANDWIDTH_UP ; 
 int /*<<< orphan*/  BATADV_ATTR_FLAG_BEST ; 
 int /*<<< orphan*/  BATADV_ATTR_HARD_IFNAME ; 
 int /*<<< orphan*/  BATADV_ATTR_ORIG_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_ROUTER ; 
 int /*<<< orphan*/  BATADV_ATTR_THROUGHPUT ; 
 int /*<<< orphan*/  BATADV_CMD_GET_GATEWAYS ; 
 int /*<<< orphan*/  BATADV_IF_DEFAULT ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 struct batadv_gw_node* FUNC0 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_gw_node*) ; 
 struct batadv_neigh_ifinfo* FUNC2 (struct batadv_neigh_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_ifinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 struct batadv_neigh_node* FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,void*) ; 
 void* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *msg, u32 portid,
				  struct netlink_callback *cb,
				  struct batadv_priv *bat_priv,
				  struct batadv_gw_node *gw_node)
{
	struct batadv_neigh_ifinfo *router_ifinfo = NULL;
	struct batadv_neigh_node *router;
	struct batadv_gw_node *curr_gw = NULL;
	int ret = 0;
	void *hdr;

	router = FUNC5(gw_node->orig_node, BATADV_IF_DEFAULT);
	if (!router)
		goto out;

	router_ifinfo = FUNC2(router, BATADV_IF_DEFAULT);
	if (!router_ifinfo)
		goto out;

	curr_gw = FUNC0(bat_priv);

	hdr = FUNC9(msg, portid, cb->nlh->nlmsg_seq,
			  &batadv_netlink_family, NLM_F_MULTI,
			  BATADV_CMD_GET_GATEWAYS);
	if (!hdr) {
		ret = -ENOBUFS;
		goto out;
	}

	FUNC6(cb, hdr);

	ret = -EMSGSIZE;

	if (curr_gw == gw_node) {
		if (FUNC11(msg, BATADV_ATTR_FLAG_BEST)) {
			FUNC7(msg, hdr);
			goto out;
		}
	}

	if (FUNC10(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
		    gw_node->orig_node->orig)) {
		FUNC7(msg, hdr);
		goto out;
	}

	if (FUNC13(msg, BATADV_ATTR_THROUGHPUT,
			router_ifinfo->bat_v.throughput)) {
		FUNC7(msg, hdr);
		goto out;
	}

	if (FUNC10(msg, BATADV_ATTR_ROUTER, ETH_ALEN, router->addr)) {
		FUNC7(msg, hdr);
		goto out;
	}

	if (FUNC12(msg, BATADV_ATTR_HARD_IFNAME,
			   router->if_incoming->net_dev->name)) {
		FUNC7(msg, hdr);
		goto out;
	}

	if (FUNC13(msg, BATADV_ATTR_BANDWIDTH_DOWN,
			gw_node->bandwidth_down)) {
		FUNC7(msg, hdr);
		goto out;
	}

	if (FUNC13(msg, BATADV_ATTR_BANDWIDTH_UP, gw_node->bandwidth_up)) {
		FUNC7(msg, hdr);
		goto out;
	}

	FUNC8(msg, hdr);
	ret = 0;

out:
	if (curr_gw)
		FUNC1(curr_gw);
	if (router_ifinfo)
		FUNC3(router_ifinfo);
	if (router)
		FUNC4(router);
	return ret;
}