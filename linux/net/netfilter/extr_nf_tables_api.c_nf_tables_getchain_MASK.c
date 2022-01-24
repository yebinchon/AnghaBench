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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
typedef  struct nft_table const nft_table ;
typedef  struct nft_table nft_chain ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  module; int /*<<< orphan*/  dump; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct nft_table const*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 size_t NFTA_CHAIN_NAME ; 
 size_t NFTA_CHAIN_TABLE ; 
 int /*<<< orphan*/  NFT_MSG_NEWCHAIN ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,struct nlattr const* const) ; 
 int FUNC3 (struct nft_table const*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  nf_tables_dump_chains ; 
 int FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nft_table const*,struct nft_table const*) ; 
 struct nft_table* FUNC7 (struct net*,struct nft_table const*,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int FUNC9 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nft_table* FUNC10 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC11 (struct nlmsghdr const*) ; 
 int FUNC12 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net *net, struct sock *nlsk,
			      struct sk_buff *skb, const struct nlmsghdr *nlh,
			      const struct nlattr * const nla[],
			      struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC11(nlh);
	u8 genmask = FUNC8(net);
	const struct nft_chain *chain;
	struct nft_table *table;
	struct sk_buff *skb2;
	int family = nfmsg->nfgen_family;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = nf_tables_dump_chains,
			.module = THIS_MODULE,
		};

		return FUNC9(nlsk, skb, nlh, &c);
	}

	table = FUNC10(net, nla[NFTA_CHAIN_TABLE], family, genmask);
	if (FUNC0(table)) {
		FUNC2(extack, nla[NFTA_CHAIN_TABLE]);
		return FUNC3(table);
	}

	chain = FUNC7(net, table, nla[NFTA_CHAIN_NAME], genmask);
	if (FUNC0(chain)) {
		FUNC2(extack, nla[NFTA_CHAIN_NAME]);
		return FUNC3(chain);
	}

	skb2 = FUNC4(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb2)
		return -ENOMEM;

	err = FUNC6(skb2, net, FUNC1(skb).portid,
					nlh->nlmsg_seq, NFT_MSG_NEWCHAIN, 0,
					family, table, chain);
	if (err < 0)
		goto err;

	return FUNC12(nlsk, skb2, FUNC1(skb).portid);

err:
	FUNC5(skb2);
	return err;
}