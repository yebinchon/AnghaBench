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
typedef  int /*<<< orphan*/  u64 ;
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct tipc_net {int /*<<< orphan*/  net_id; int /*<<< orphan*/ * node_id; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  TIPC_NLA_NET ; 
 int /*<<< orphan*/  TIPC_NLA_NET_ID ; 
 int /*<<< orphan*/  TIPC_NLA_NET_NODEID ; 
 int /*<<< orphan*/  TIPC_NLA_NET_NODEID_W1 ; 
 int /*<<< orphan*/  TIPC_NL_NET_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 int /*<<< orphan*/  tipc_net_id ; 

__attribute__((used)) static int FUNC9(struct net *net, struct tipc_nl_msg *msg)
{
	struct tipc_net *tn = FUNC3(net, tipc_net_id);
	u64 *w0 = (u64 *)&tn->node_id[0];
	u64 *w1 = (u64 *)&tn->node_id[8];
	struct nlattr *attrs;
	void *hdr;

	hdr = FUNC2(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  NLM_F_MULTI, TIPC_NL_NET_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC6(msg->skb, TIPC_NLA_NET);
	if (!attrs)
		goto msg_full;

	if (FUNC7(msg->skb, TIPC_NLA_NET_ID, tn->net_id))
		goto attr_msg_full;
	if (FUNC8(msg->skb, TIPC_NLA_NET_NODEID, *w0, 0))
		goto attr_msg_full;
	if (FUNC8(msg->skb, TIPC_NLA_NET_NODEID_W1, *w1, 0))
		goto attr_msg_full;
	FUNC5(msg->skb, attrs);
	FUNC1(msg->skb, hdr);

	return 0;

attr_msg_full:
	FUNC4(msg->skb, attrs);
msg_full:
	FUNC0(msg->skb, hdr);

	return -EMSGSIZE;
}