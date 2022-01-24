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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct TYPE_2__ {int /*<<< orphan*/  sent_pkts; int /*<<< orphan*/  recv_pkts; } ;
struct tipc_link {TYPE_1__ stats; int /*<<< orphan*/  priority; int /*<<< orphan*/  window; int /*<<< orphan*/  tolerance; scalar_t__ active; int /*<<< orphan*/  mtu; int /*<<< orphan*/  name; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_LINK ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_ACTIVE ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_DEST ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_MTU ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_RX ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_TX ; 
 int /*<<< orphan*/  TIPC_NLA_LINK_UP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_PRIO ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_TOL ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_WIN ; 
 int /*<<< orphan*/  TIPC_NL_LINK_GET ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 scalar_t__ FUNC11 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*) ; 

int FUNC13(struct net *net, struct tipc_nl_msg *msg,
		       struct tipc_link *link, int nlflags)
{
	u32 self = FUNC12(net);
	struct nlattr *attrs;
	struct nlattr *prop;
	void *hdr;
	int err;

	hdr = FUNC3(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  nlflags, TIPC_NL_LINK_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC6(msg->skb, TIPC_NLA_LINK);
	if (!attrs)
		goto msg_full;

	if (FUNC8(msg->skb, TIPC_NLA_LINK_NAME, link->name))
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_LINK_DEST, FUNC10(self)))
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_LINK_MTU, link->mtu))
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_LINK_RX, link->stats.recv_pkts))
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_LINK_TX, link->stats.sent_pkts))
		goto attr_msg_full;

	if (FUNC11(link))
		if (FUNC7(msg->skb, TIPC_NLA_LINK_UP))
			goto attr_msg_full;
	if (link->active)
		if (FUNC7(msg->skb, TIPC_NLA_LINK_ACTIVE))
			goto attr_msg_full;

	prop = FUNC6(msg->skb, TIPC_NLA_LINK_PROP);
	if (!prop)
		goto attr_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
		goto prop_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_PROP_TOL, link->tolerance))
		goto prop_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_PROP_WIN,
			link->window))
		goto prop_msg_full;
	if (FUNC9(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
		goto prop_msg_full;
	FUNC5(msg->skb, prop);

	err = FUNC0(msg->skb, &link->stats);
	if (err)
		goto attr_msg_full;

	FUNC5(msg->skb, attrs);
	FUNC2(msg->skb, hdr);

	return 0;

prop_msg_full:
	FUNC4(msg->skb, prop);
attr_msg_full:
	FUNC4(msg->skb, attrs);
msg_full:
	FUNC1(msg->skb, hdr);

	return -EMSGSIZE;
}