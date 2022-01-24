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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; scalar_t__ last_seen; } ;
struct batadv_neigh_node {struct batadv_hard_iface* if_incoming; int /*<<< orphan*/  addr; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {unsigned int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_FLAG_BEST ; 
 int /*<<< orphan*/  BATADV_ATTR_HARD_IFINDEX ; 
 int /*<<< orphan*/  BATADV_ATTR_LAST_SEEN_MSECS ; 
 int /*<<< orphan*/  BATADV_ATTR_NEIGH_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_ORIG_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_TQ ; 
 int /*<<< orphan*/  BATADV_CMD_GET_ORIGINATORS ; 
 struct batadv_hard_iface* BATADV_IF_DEFAULT ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_neigh_node*,struct batadv_hard_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct sk_buff *msg, u32 portid, u32 seq,
				 struct batadv_priv *bat_priv,
				 struct batadv_hard_iface *if_outgoing,
				 struct batadv_orig_node *orig_node,
				 struct batadv_neigh_node *neigh_node,
				 bool best)
{
	void *hdr;
	u8 tq_avg;
	unsigned int last_seen_msecs;

	last_seen_msecs = FUNC4(jiffies - orig_node->last_seen);

	if (!FUNC0(neigh_node, if_outgoing, &tq_avg))
		return 0;

	if (if_outgoing != BATADV_IF_DEFAULT &&
	    if_outgoing != neigh_node->if_incoming)
		return 0;

	hdr = FUNC3(msg, portid, seq, &batadv_netlink_family,
			  NLM_F_MULTI, BATADV_CMD_GET_ORIGINATORS);
	if (!hdr)
		return -ENOBUFS;

	if (FUNC5(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
		    orig_node->orig) ||
	    FUNC5(msg, BATADV_ATTR_NEIGH_ADDRESS, ETH_ALEN,
		    neigh_node->addr) ||
	    FUNC7(msg, BATADV_ATTR_HARD_IFINDEX,
			neigh_node->if_incoming->net_dev->ifindex) ||
	    FUNC8(msg, BATADV_ATTR_TQ, tq_avg) ||
	    FUNC7(msg, BATADV_ATTR_LAST_SEEN_MSECS,
			last_seen_msecs))
		goto nla_put_failure;

	if (best && FUNC6(msg, BATADV_ATTR_FLAG_BEST))
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}