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
struct sk_buff {int len; } ;
struct rtgenmsg {int /*<<< orphan*/  rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct mrt6msg {int /*<<< orphan*/  im6_dst; int /*<<< orphan*/  im6_src; int /*<<< orphan*/  im6_mif; int /*<<< orphan*/  im6_msgtype; } ;
struct mr_table {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IP6MRA_CREPORT_DST_ADDR ; 
 int /*<<< orphan*/  IP6MRA_CREPORT_MIF_ID ; 
 int /*<<< orphan*/  IP6MRA_CREPORT_MSGTYPE ; 
 int /*<<< orphan*/  IP6MRA_CREPORT_PKT ; 
 int /*<<< orphan*/  IP6MRA_CREPORT_SRC_ADDR ; 
 int /*<<< orphan*/  RTM_NEWCACHEREPORT ; 
 int /*<<< orphan*/  RTNLGRP_IPV6_MROUTE_R ; 
 int /*<<< orphan*/  RTNL_FAMILY_IP6MR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtgenmsg* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct net* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC17(struct mr_table *mrt, struct sk_buff *pkt)
{
	struct net *net = FUNC12(&mrt->net);
	struct nlmsghdr *nlh;
	struct rtgenmsg *rtgenm;
	struct mrt6msg *msg;
	struct sk_buff *skb;
	struct nlattr *nla;
	int payloadlen;

	payloadlen = pkt->len - sizeof(struct mrt6msg);
	msg = (struct mrt6msg *)FUNC16(pkt);

	skb = FUNC10(FUNC1(payloadlen), GFP_ATOMIC);
	if (!skb)
		goto errout;

	nlh = FUNC11(skb, 0, 0, RTM_NEWCACHEREPORT,
			sizeof(struct rtgenmsg), 0);
	if (!nlh)
		goto errout;
	rtgenm = FUNC8(nlh);
	rtgenm->rtgen_family = RTNL_FAMILY_IP6MR;
	if (FUNC5(skb, IP6MRA_CREPORT_MSGTYPE, msg->im6_msgtype) ||
	    FUNC4(skb, IP6MRA_CREPORT_MIF_ID, msg->im6_mif) ||
	    FUNC3(skb, IP6MRA_CREPORT_SRC_ADDR,
			     &msg->im6_src) ||
	    FUNC3(skb, IP6MRA_CREPORT_DST_ADDR,
			     &msg->im6_dst))
		goto nla_put_failure;

	nla = FUNC6(skb, IP6MRA_CREPORT_PKT, payloadlen);
	if (!nla || FUNC15(pkt, sizeof(struct mrt6msg),
				  FUNC2(nla), payloadlen))
		goto nla_put_failure;

	FUNC9(skb, nlh);

	FUNC13(skb, net, 0, RTNLGRP_IPV6_MROUTE_R, NULL, GFP_ATOMIC);
	return;

nla_put_failure:
	FUNC7(skb, nlh);
errout:
	FUNC0(skb);
	FUNC14(net, RTNLGRP_IPV6_MROUTE_R, -ENOBUFS);
}