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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_table {int flags; } ;
struct nft_ctx {int dummy; } ;
struct nft_chain {int flags; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nft_table*) ; 
 size_t NFTA_CHAIN_FLAGS ; 
 size_t NFTA_CHAIN_HANDLE ; 
 size_t NFTA_CHAIN_HOOK ; 
 size_t NFTA_CHAIN_NAME ; 
 size_t NFTA_CHAIN_POLICY ; 
 size_t NFTA_CHAIN_TABLE ; 
 int NFT_BASE_CHAIN ; 
#define  NF_ACCEPT 129 
#define  NF_DROP 128 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,struct nlattr const*) ; 
 int FUNC2 (struct nft_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nft_ctx*,int,int,int,int) ; 
 int FUNC6 (struct nft_ctx*,int,int,int) ; 
 struct nft_table* FUNC7 (struct net*,struct nft_table*,struct nlattr const*,int) ; 
 struct nft_table* FUNC8 (struct nft_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,struct nft_table*,struct nlattr const* const*) ; 
 int FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (struct nft_table*) ; 
 struct nft_table* FUNC12 (struct net*,struct nlattr const* const,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC14 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC15 (struct nlmsghdr const*) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net *net, struct sock *nlsk,
			      struct sk_buff *skb, const struct nlmsghdr *nlh,
			      const struct nlattr * const nla[],
			      struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC15(nlh);
	u8 genmask = FUNC10(net);
	int family = nfmsg->nfgen_family;
	const struct nlattr *attr;
	struct nft_table *table;
	struct nft_chain *chain;
	u8 policy = NF_ACCEPT;
	struct nft_ctx ctx;
	u64 handle = 0;
	u32 flags = 0;

	FUNC4(&net->nft.commit_mutex);

	table = FUNC12(net, nla[NFTA_CHAIN_TABLE], family, genmask);
	if (FUNC0(table)) {
		FUNC1(extack, nla[NFTA_CHAIN_TABLE]);
		return FUNC2(table);
	}

	chain = NULL;
	attr = nla[NFTA_CHAIN_NAME];

	if (nla[NFTA_CHAIN_HANDLE]) {
		handle = FUNC3(FUNC14(nla[NFTA_CHAIN_HANDLE]));
		chain = FUNC8(table, handle, genmask);
		if (FUNC0(chain)) {
			FUNC1(extack, nla[NFTA_CHAIN_HANDLE]);
			return FUNC2(chain);
		}
		attr = nla[NFTA_CHAIN_HANDLE];
	} else {
		chain = FUNC7(net, table, attr, genmask);
		if (FUNC0(chain)) {
			if (FUNC2(chain) != -ENOENT) {
				FUNC1(extack, attr);
				return FUNC2(chain);
			}
			chain = NULL;
		}
	}

	if (nla[NFTA_CHAIN_POLICY]) {
		if (chain != NULL &&
		    !FUNC11(chain)) {
			FUNC1(extack, nla[NFTA_CHAIN_POLICY]);
			return -EOPNOTSUPP;
		}

		if (chain == NULL &&
		    nla[NFTA_CHAIN_HOOK] == NULL) {
			FUNC1(extack, nla[NFTA_CHAIN_POLICY]);
			return -EOPNOTSUPP;
		}

		policy = FUNC16(FUNC13(nla[NFTA_CHAIN_POLICY]));
		switch (policy) {
		case NF_DROP:
		case NF_ACCEPT:
			break;
		default:
			return -EINVAL;
		}
	}

	if (nla[NFTA_CHAIN_FLAGS])
		flags = FUNC16(FUNC13(nla[NFTA_CHAIN_FLAGS]));
	else if (chain)
		flags = chain->flags;

	FUNC9(&ctx, net, skb, nlh, family, table, chain, nla);

	if (chain != NULL) {
		if (nlh->nlmsg_flags & NLM_F_EXCL) {
			FUNC1(extack, attr);
			return -EEXIST;
		}
		if (nlh->nlmsg_flags & NLM_F_REPLACE)
			return -EOPNOTSUPP;

		flags |= chain->flags & NFT_BASE_CHAIN;
		return FUNC6(&ctx, genmask, policy, flags);
	}

	return FUNC5(&ctx, family, genmask, policy, flags);
}