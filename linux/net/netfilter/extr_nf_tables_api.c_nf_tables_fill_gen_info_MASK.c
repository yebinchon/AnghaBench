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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct TYPE_2__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_GEN_ID ; 
 int /*<<< orphan*/  NFTA_GEN_PROC_NAME ; 
 int /*<<< orphan*/  NFTA_GEN_PROC_PID ; 
 int /*<<< orphan*/  NFT_MSG_NEWGEN ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net *net,
				   u32 portid, u32 seq)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	char buf[TASK_COMM_LEN];
	int event = FUNC3(NFNL_SUBSYS_NFTABLES, NFT_MSG_NEWGEN);

	nlh = FUNC8(skb, portid, seq, event, sizeof(struct nfgenmsg), 0);
	if (nlh == NULL)
		goto nla_put_failure;

	nfmsg = FUNC6(nlh);
	nfmsg->nfgen_family	= AF_UNSPEC;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= FUNC2(net->nft.base_seq & 0xffff);

	if (FUNC4(skb, NFTA_GEN_ID, FUNC1(net->nft.base_seq)) ||
	    FUNC4(skb, NFTA_GEN_PROC_PID, FUNC1(FUNC10(current))) ||
	    FUNC5(skb, NFTA_GEN_PROC_NAME, FUNC0(buf, current)))
		goto nla_put_failure;

	FUNC7(skb, nlh);
	return 0;

nla_put_failure:
	FUNC9(skb, nlh);
	return -EMSGSIZE;
}