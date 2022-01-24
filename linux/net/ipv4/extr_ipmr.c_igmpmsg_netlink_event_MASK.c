#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct rtgenmsg {int /*<<< orphan*/  rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  net; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct igmpmsg {TYPE_2__ im_dst; TYPE_1__ im_src; int /*<<< orphan*/  im_vif; int /*<<< orphan*/  im_msgtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPMRA_CREPORT_DST_ADDR ; 
 int /*<<< orphan*/  IPMRA_CREPORT_MSGTYPE ; 
 int /*<<< orphan*/  IPMRA_CREPORT_PKT ; 
 int /*<<< orphan*/  IPMRA_CREPORT_SRC_ADDR ; 
 int /*<<< orphan*/  IPMRA_CREPORT_VIF_ID ; 
 int /*<<< orphan*/  RTM_NEWCACHEREPORT ; 
 int /*<<< orphan*/  RTNLGRP_IPV4_MROUTE_R ; 
 int /*<<< orphan*/  RTNL_FAMILY_IPMR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
	struct igmpmsg *msg;
	struct sk_buff *skb;
	struct nlattr *nla;
	int payloadlen;

	payloadlen = pkt->len - sizeof(struct igmpmsg);
	msg = (struct igmpmsg *)FUNC16(pkt);

	skb = FUNC10(FUNC0(payloadlen), GFP_ATOMIC);
	if (!skb)
		goto errout;

	nlh = FUNC11(skb, 0, 0, RTM_NEWCACHEREPORT,
			sizeof(struct rtgenmsg), 0);
	if (!nlh)
		goto errout;
	rtgenm = FUNC8(nlh);
	rtgenm->rtgen_family = RTNL_FAMILY_IPMR;
	if (FUNC5(skb, IPMRA_CREPORT_MSGTYPE, msg->im_msgtype) ||
	    FUNC4(skb, IPMRA_CREPORT_VIF_ID, msg->im_vif) ||
	    FUNC3(skb, IPMRA_CREPORT_SRC_ADDR,
			    msg->im_src.s_addr) ||
	    FUNC3(skb, IPMRA_CREPORT_DST_ADDR,
			    msg->im_dst.s_addr))
		goto nla_put_failure;

	nla = FUNC6(skb, IPMRA_CREPORT_PKT, payloadlen);
	if (!nla || FUNC15(pkt, sizeof(struct igmpmsg),
				  FUNC2(nla), payloadlen))
		goto nla_put_failure;

	FUNC9(skb, nlh);

	FUNC13(skb, net, 0, RTNLGRP_IPV4_MROUTE_R, NULL, GFP_ATOMIC);
	return;

nla_put_failure:
	FUNC7(skb, nlh);
errout:
	FUNC1(skb);
	FUNC14(net, RTNLGRP_IPV4_MROUTE_R, -ENOBUFS);
}