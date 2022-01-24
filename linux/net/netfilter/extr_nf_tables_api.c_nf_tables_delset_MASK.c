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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_set {int /*<<< orphan*/  nelems; scalar_t__ use; } ;
struct nft_ctx {int /*<<< orphan*/  table; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nft_set*) ; 
 scalar_t__ NFPROTO_UNSPEC ; 
 size_t NFTA_SET_HANDLE ; 
 size_t NFTA_SET_NAME ; 
 size_t NFTA_SET_TABLE ; 
 int NLM_F_NONREC ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,struct nlattr const*) ; 
 int FUNC2 (struct nft_set*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,struct nlattr const* const*,struct netlink_ext_ack*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nft_ctx*,struct nft_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 struct nft_set* FUNC7 (int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ) ; 
 struct nft_set* FUNC8 (int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC9 (struct nlmsghdr const*) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC9(nlh);
	u8 genmask = FUNC6(net);
	const struct nlattr *attr;
	struct nft_set *set;
	struct nft_ctx ctx;
	int err;

	if (nfmsg->nfgen_family == NFPROTO_UNSPEC)
		return -EAFNOSUPPORT;
	if (nla[NFTA_SET_TABLE] == NULL)
		return -EINVAL;

	err = FUNC4(&ctx, net, skb, nlh, nla, extack,
					genmask);
	if (err < 0)
		return err;

	if (nla[NFTA_SET_HANDLE]) {
		attr = nla[NFTA_SET_HANDLE];
		set = FUNC8(ctx.table, attr, genmask);
	} else {
		attr = nla[NFTA_SET_NAME];
		set = FUNC7(ctx.table, attr, genmask);
	}

	if (FUNC0(set)) {
		FUNC1(extack, attr);
		return FUNC2(set);
	}
	if (set->use ||
	    (nlh->nlmsg_flags & NLM_F_NONREC && FUNC3(&set->nelems) > 0)) {
		FUNC1(extack, attr);
		return -EBUSY;
	}

	return FUNC5(&ctx, set);
}