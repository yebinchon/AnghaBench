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
struct nft_table {int /*<<< orphan*/  handle; int /*<<< orphan*/  use; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct nfgenmsg {int nfgen_family; int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; } ;
struct TYPE_2__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_TABLE_FLAGS ; 
 int /*<<< orphan*/  NFTA_TABLE_HANDLE ; 
 int /*<<< orphan*/  NFTA_TABLE_NAME ; 
 int /*<<< orphan*/  NFTA_TABLE_PAD ; 
 int /*<<< orphan*/  NFTA_TABLE_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC7 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net *net,
				     u32 portid, u32 seq, int event, u32 flags,
				     int family, const struct nft_table *table)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;

	event = FUNC3(NFNL_SUBSYS_NFTABLES, event);
	nlh = FUNC9(skb, portid, seq, event, sizeof(struct nfgenmsg), flags);
	if (nlh == NULL)
		goto nla_put_failure;

	nfmsg = FUNC7(nlh);
	nfmsg->nfgen_family	= family;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= FUNC2(net->nft.base_seq & 0xffff);

	if (FUNC6(skb, NFTA_TABLE_NAME, table->name) ||
	    FUNC4(skb, NFTA_TABLE_FLAGS, FUNC1(table->flags)) ||
	    FUNC4(skb, NFTA_TABLE_USE, FUNC1(table->use)) ||
	    FUNC5(skb, NFTA_TABLE_HANDLE, FUNC0(table->handle),
			 NFTA_TABLE_PAD))
		goto nla_put_failure;

	FUNC8(skb, nlh);
	return 0;

nla_put_failure:
	FUNC10(skb, nlh);
	return -1;
}