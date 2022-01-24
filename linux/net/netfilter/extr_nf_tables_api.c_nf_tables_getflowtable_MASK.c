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
typedef  struct nft_table const nft_flowtable ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {void* data; int /*<<< orphan*/  module; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; int /*<<< orphan*/  start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct nft_table const*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 size_t NFTA_FLOWTABLE_NAME ; 
 size_t NFTA_FLOWTABLE_TABLE ; 
 int /*<<< orphan*/  NFT_MSG_NEWFLOWTABLE ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_DUMP ; 
 int FUNC2 (struct nft_table const*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  nf_tables_dump_flowtable ; 
 int /*<<< orphan*/  nf_tables_dump_flowtable_done ; 
 int /*<<< orphan*/  nf_tables_dump_flowtable_start ; 
 int FUNC5 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nft_table const*) ; 
 struct nft_table* FUNC6 (struct nft_table const*,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int FUNC8 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nft_table* FUNC9 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr const*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct sock *nlsk,
				  struct sk_buff *skb,
				  const struct nlmsghdr *nlh,
				  const struct nlattr * const nla[],
				  struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC10(nlh);
	u8 genmask = FUNC7(net);
	int family = nfmsg->nfgen_family;
	struct nft_flowtable *flowtable;
	const struct nft_table *table;
	struct sk_buff *skb2;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.start = nf_tables_dump_flowtable_start,
			.dump = nf_tables_dump_flowtable,
			.done = nf_tables_dump_flowtable_done,
			.module = THIS_MODULE,
			.data = (void *)nla,
		};

		return FUNC8(nlsk, skb, nlh, &c);
	}

	if (!nla[NFTA_FLOWTABLE_NAME])
		return -EINVAL;

	table = FUNC9(net, nla[NFTA_FLOWTABLE_TABLE], family,
				 genmask);
	if (FUNC0(table))
		return FUNC2(table);

	flowtable = FUNC6(table, nla[NFTA_FLOWTABLE_NAME],
					 genmask);
	if (FUNC0(flowtable))
		return FUNC2(flowtable);

	skb2 = FUNC3(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb2)
		return -ENOMEM;

	err = FUNC5(skb2, net, FUNC1(skb).portid,
					    nlh->nlmsg_seq,
					    NFT_MSG_NEWFLOWTABLE, 0, family,
					    flowtable);
	if (err < 0)
		goto err;

	return FUNC11(nlsk, skb2, FUNC1(skb).portid);
err:
	FUNC4(skb2);
	return err;
}