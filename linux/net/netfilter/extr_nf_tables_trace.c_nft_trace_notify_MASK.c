#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nft_traceinfo {int type; int packet_dumped; TYPE_5__* basechain; TYPE_7__* verdict; TYPE_4__* chain; struct nft_pktinfo* pkt; } ;
struct nft_pktinfo {TYPE_6__* skb; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_14__ {TYPE_1__* chain; } ;
struct TYPE_13__ {int mark; } ;
struct TYPE_12__ {int policy; TYPE_2__* type; } ;
struct TYPE_11__ {TYPE_3__* table; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  family; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNLGRP_NFTRACE ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_TRACE_CHAIN ; 
 int /*<<< orphan*/  NFTA_TRACE_MARK ; 
 int /*<<< orphan*/  NFTA_TRACE_NFPROTO ; 
 int /*<<< orphan*/  NFTA_TRACE_POLICY ; 
 int /*<<< orphan*/  NFTA_TRACE_TABLE ; 
 int /*<<< orphan*/  NFTA_TRACE_TYPE ; 
 int /*<<< orphan*/  NFTA_TRACE_VERDICT ; 
 int /*<<< orphan*/  NFT_MSG_TRACE ; 
 int NFT_TRACETYPE_LL_HSIZE ; 
 int NFT_TRACETYPE_NETWORK_HSIZE ; 
#define  NFT_TRACETYPE_POLICY 132 
#define  NFT_TRACETYPE_RETURN 131 
#define  NFT_TRACETYPE_RULE 130 
 int NFT_TRACETYPE_TRANSPORT_HSIZE ; 
#define  NFT_TRACETYPE_UNSPEC 129 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  __NFT_TRACETYPE_MAX 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct nft_pktinfo const*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct nft_traceinfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC10 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC11 (struct nft_pktinfo const*) ; 
 int FUNC12 (struct nft_pktinfo const*) ; 
 scalar_t__ FUNC13 (struct nft_traceinfo*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (int) ; 
 unsigned int FUNC18 (int) ; 
 struct nfgenmsg* FUNC19 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC21 (unsigned int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC22 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC23 (int) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct sk_buff*,TYPE_6__*) ; 

void FUNC26(struct nft_traceinfo *info)
{
	const struct nft_pktinfo *pkt = info->pkt;
	struct nfgenmsg *nfmsg;
	struct nlmsghdr *nlh;
	struct sk_buff *skb;
	unsigned int size;
	u16 event;

	if (!FUNC6(FUNC10(pkt), NFNLGRP_NFTRACE))
		return;

	size = FUNC23(sizeof(struct nfgenmsg)) +
		FUNC17(FUNC24(info->chain->table->name)) +
		FUNC17(FUNC24(info->chain->name)) +
		FUNC18(sizeof(__be64)) +	/* rule handle */
		FUNC17(sizeof(__be32)) +	/* trace type */
		FUNC17(0) +			/* VERDICT, nested */
			FUNC17(sizeof(u32)) +	/* verdict code */
		FUNC17(sizeof(u32)) +		/* id */
		FUNC17(NFT_TRACETYPE_LL_HSIZE) +
		FUNC17(NFT_TRACETYPE_NETWORK_HSIZE) +
		FUNC17(NFT_TRACETYPE_TRANSPORT_HSIZE) +
		FUNC17(sizeof(u32)) +		/* iif */
		FUNC17(sizeof(__be16)) +	/* iiftype */
		FUNC17(sizeof(u32)) +		/* oif */
		FUNC17(sizeof(__be16)) +	/* oiftype */
		FUNC17(sizeof(u32)) +		/* mark */
		FUNC17(sizeof(u32)) +		/* nfproto */
		FUNC17(sizeof(u32));		/* policy */

	if (FUNC13(info))
		size += FUNC17(FUNC24(info->verdict->chain->name)); /* jump target */

	skb = FUNC21(size, GFP_ATOMIC);
	if (!skb)
		return;

	event = FUNC8(NFNL_SUBSYS_NFTABLES, NFT_MSG_TRACE);
	nlh = FUNC22(skb, 0, 0, event, sizeof(struct nfgenmsg), 0);
	if (!nlh)
		goto nla_put_failure;

	nfmsg = FUNC19(nlh);
	nfmsg->nfgen_family	= info->basechain->type->family;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= 0;

	if (FUNC15(skb, NFTA_TRACE_NFPROTO, FUNC1(FUNC12(pkt))))
		goto nla_put_failure;

	if (FUNC15(skb, NFTA_TRACE_TYPE, FUNC1(info->type)))
		goto nla_put_failure;

	if (FUNC25(skb, pkt->skb))
		goto nla_put_failure;

	if (FUNC16(skb, NFTA_TRACE_CHAIN, info->chain->name))
		goto nla_put_failure;

	if (FUNC16(skb, NFTA_TRACE_TABLE, info->chain->table->name))
		goto nla_put_failure;

	if (FUNC5(skb, info))
		goto nla_put_failure;

	switch (info->type) {
	case NFT_TRACETYPE_UNSPEC:
	case __NFT_TRACETYPE_MAX:
		break;
	case NFT_TRACETYPE_RETURN:
	case NFT_TRACETYPE_RULE:
		if (FUNC14(skb, NFTA_TRACE_VERDICT, info->verdict))
			goto nla_put_failure;
		break;
	case NFT_TRACETYPE_POLICY:
		if (FUNC15(skb, NFTA_TRACE_POLICY,
				 FUNC1(info->basechain->policy)))
			goto nla_put_failure;
		break;
	}

	if (pkt->skb->mark &&
	    FUNC15(skb, NFTA_TRACE_MARK, FUNC1(pkt->skb->mark)))
		goto nla_put_failure;

	if (!info->packet_dumped) {
		if (FUNC3(skb, FUNC9(pkt), FUNC11(pkt)))
			goto nla_put_failure;

		if (FUNC4(skb, pkt))
			goto nla_put_failure;
		info->packet_dumped = true;
	}

	FUNC20(skb, nlh);
	FUNC7(skb, FUNC10(pkt), 0, NFNLGRP_NFTRACE, 0, GFP_ATOMIC);
	return;

 nla_put_failure:
	FUNC0(1);
	FUNC2(skb);
}