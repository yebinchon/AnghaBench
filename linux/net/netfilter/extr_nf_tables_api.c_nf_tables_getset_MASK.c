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
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  table; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  module; struct nft_ctx* data; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; int /*<<< orphan*/  start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct nft_set const*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ NFPROTO_UNSPEC ; 
 size_t NFTA_SET_NAME ; 
 size_t NFTA_SET_TABLE ; 
 int /*<<< orphan*/  NFT_MSG_NEWSET ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_DUMP ; 
 int FUNC2 (struct nft_set const*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  nf_tables_dump_sets ; 
 int /*<<< orphan*/  nf_tables_dump_sets_done ; 
 int /*<<< orphan*/  nf_tables_dump_sets_start ; 
 int FUNC5 (struct sk_buff*,struct nft_ctx*,struct nft_set const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,struct nlattr const* const*,struct netlink_ext_ack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int FUNC8 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nft_set* FUNC9 (int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr const*) ; 
 int FUNC11 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	u8 genmask = FUNC7(net);
	const struct nft_set *set;
	struct nft_ctx ctx;
	struct sk_buff *skb2;
	const struct nfgenmsg *nfmsg = FUNC10(nlh);
	int err;

	/* Verify existence before starting dump */
	err = FUNC6(&ctx, net, skb, nlh, nla, extack,
					genmask);
	if (err < 0)
		return err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.start = nf_tables_dump_sets_start,
			.dump = nf_tables_dump_sets,
			.done = nf_tables_dump_sets_done,
			.data = &ctx,
			.module = THIS_MODULE,
		};

		return FUNC8(nlsk, skb, nlh, &c);
	}

	/* Only accept unspec with dump */
	if (nfmsg->nfgen_family == NFPROTO_UNSPEC)
		return -EAFNOSUPPORT;
	if (!nla[NFTA_SET_TABLE])
		return -EINVAL;

	set = FUNC9(ctx.table, nla[NFTA_SET_NAME], genmask);
	if (FUNC0(set))
		return FUNC2(set);

	skb2 = FUNC3(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (skb2 == NULL)
		return -ENOMEM;

	err = FUNC5(skb2, &ctx, set, NFT_MSG_NEWSET, 0);
	if (err < 0)
		goto err;

	return FUNC11(nlsk, skb2, FUNC1(skb).portid);

err:
	FUNC4(skb2);
	return err;
}