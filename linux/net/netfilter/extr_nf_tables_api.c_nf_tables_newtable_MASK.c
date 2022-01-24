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
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_table {int family; int flags; struct nft_table* name; int /*<<< orphan*/  chains_ht; int /*<<< orphan*/  list; scalar_t__ handle; int /*<<< orphan*/  flowtables; int /*<<< orphan*/  objects; int /*<<< orphan*/  sets; int /*<<< orphan*/  chains; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tables; int /*<<< orphan*/  commit_mutex; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nft_table*) ; 
 size_t NFTA_TABLE_FLAGS ; 
 size_t NFTA_TABLE_NAME ; 
 int /*<<< orphan*/  NFT_MSG_NEWTABLE ; 
 int NFT_TABLE_F_DORMANT ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,struct nlattr const*) ; 
 int FUNC3 (struct nft_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_table*) ; 
 struct nft_table* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nft_ctx*) ; 
 int /*<<< orphan*/  nft_chain_ht_params ; 
 int /*<<< orphan*/  FUNC9 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,int /*<<< orphan*/ *,struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 
 struct nft_table* FUNC11 (struct net*,struct nlattr const*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct nft_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr const* const) ; 
 struct nft_table* FUNC14 (struct nlattr const*,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC15 (struct nlmsghdr const*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ table_handle ; 

__attribute__((used)) static int FUNC19(struct net *net, struct sock *nlsk,
			      struct sk_buff *skb, const struct nlmsghdr *nlh,
			      const struct nlattr * const nla[],
			      struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC15(nlh);
	u8 genmask = FUNC10(net);
	int family = nfmsg->nfgen_family;
	const struct nlattr *attr;
	struct nft_table *table;
	u32 flags = 0;
	struct nft_ctx ctx;
	int err;

	FUNC7(&net->nft.commit_mutex);
	attr = nla[NFTA_TABLE_NAME];
	table = FUNC11(net, attr, family, genmask);
	if (FUNC1(table)) {
		if (FUNC3(table) != -ENOENT)
			return FUNC3(table);
	} else {
		if (nlh->nlmsg_flags & NLM_F_EXCL) {
			FUNC2(extack, attr);
			return -EEXIST;
		}
		if (nlh->nlmsg_flags & NLM_F_REPLACE)
			return -EOPNOTSUPP;

		FUNC9(&ctx, net, skb, nlh, family, table, NULL, nla);
		return FUNC8(&ctx);
	}

	if (nla[NFTA_TABLE_FLAGS]) {
		flags = FUNC16(FUNC13(nla[NFTA_TABLE_FLAGS]));
		if (flags & ~NFT_TABLE_F_DORMANT)
			return -EINVAL;
	}

	err = -ENOMEM;
	table = FUNC5(sizeof(*table), GFP_KERNEL);
	if (table == NULL)
		goto err_kzalloc;

	table->name = FUNC14(attr, GFP_KERNEL);
	if (table->name == NULL)
		goto err_strdup;

	err = FUNC18(&table->chains_ht, &nft_chain_ht_params);
	if (err)
		goto err_chain_ht;

	FUNC0(&table->chains);
	FUNC0(&table->sets);
	FUNC0(&table->objects);
	FUNC0(&table->flowtables);
	table->family = family;
	table->flags = flags;
	table->handle = ++table_handle;

	FUNC9(&ctx, net, skb, nlh, family, table, NULL, nla);
	err = FUNC12(&ctx, NFT_MSG_NEWTABLE);
	if (err < 0)
		goto err_trans;

	FUNC6(&table->list, &net->nft.tables);
	return 0;
err_trans:
	FUNC17(&table->chains_ht);
err_chain_ht:
	FUNC4(table->name);
err_strdup:
	FUNC4(table);
err_kzalloc:
	return err;
}