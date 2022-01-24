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
struct nft_table {int dummy; } ;
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
 size_t NFTA_TABLE_NAME ; 
 int /*<<< orphan*/  NFT_MSG_NEWTABLE ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,struct nlattr const* const) ; 
 int FUNC3 (struct nft_table const*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  nf_tables_dump_tables ; 
 int FUNC6 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nft_table const*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int FUNC8 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nft_table* FUNC9 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr const*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct sock *nlsk,
			      struct sk_buff *skb, const struct nlmsghdr *nlh,
			      const struct nlattr * const nla[],
			      struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC10(nlh);
	u8 genmask = FUNC7(net);
	const struct nft_table *table;
	struct sk_buff *skb2;
	int family = nfmsg->nfgen_family;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.dump = nf_tables_dump_tables,
			.module = THIS_MODULE,
		};

		return FUNC8(nlsk, skb, nlh, &c);
	}

	table = FUNC9(net, nla[NFTA_TABLE_NAME], family, genmask);
	if (FUNC0(table)) {
		FUNC2(extack, nla[NFTA_TABLE_NAME]);
		return FUNC3(table);
	}

	skb2 = FUNC4(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb2)
		return -ENOMEM;

	err = FUNC6(skb2, net, FUNC1(skb).portid,
					nlh->nlmsg_seq, NFT_MSG_NEWTABLE, 0,
					family, table);
	if (err < 0)
		goto err;

	return FUNC11(nlsk, skb2, FUNC1(skb).portid);

err:
	FUNC5(skb2);
	return err;
}