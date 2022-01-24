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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_table {scalar_t__ use; } ;
struct nft_object {scalar_t__ use; } ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nft_table*) ; 
 size_t NFTA_OBJ_HANDLE ; 
 size_t NFTA_OBJ_NAME ; 
 size_t NFTA_OBJ_TABLE ; 
 size_t NFTA_OBJ_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,struct nlattr const*) ; 
 int FUNC2 (struct nft_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table*,int /*<<< orphan*/ *,struct nlattr const* const*) ; 
 int FUNC4 (struct nft_ctx*,struct nft_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 struct nft_table* FUNC6 (struct net*,struct nft_table*,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_table* FUNC7 (struct nft_table*,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_table* FUNC8 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC10(nlh);
	u8 genmask = FUNC5(net);
	int family = nfmsg->nfgen_family;
	const struct nlattr *attr;
	struct nft_table *table;
	struct nft_object *obj;
	struct nft_ctx ctx;
	u32 objtype;

	if (!nla[NFTA_OBJ_TYPE] ||
	    (!nla[NFTA_OBJ_NAME] && !nla[NFTA_OBJ_HANDLE]))
		return -EINVAL;

	table = FUNC8(net, nla[NFTA_OBJ_TABLE], family, genmask);
	if (FUNC0(table)) {
		FUNC1(extack, nla[NFTA_OBJ_TABLE]);
		return FUNC2(table);
	}

	objtype = FUNC11(FUNC9(nla[NFTA_OBJ_TYPE]));
	if (nla[NFTA_OBJ_HANDLE]) {
		attr = nla[NFTA_OBJ_HANDLE];
		obj = FUNC7(table, attr, objtype, genmask);
	} else {
		attr = nla[NFTA_OBJ_NAME];
		obj = FUNC6(net, table, attr, objtype, genmask);
	}

	if (FUNC0(obj)) {
		FUNC1(extack, attr);
		return FUNC2(obj);
	}
	if (obj->use > 0) {
		FUNC1(extack, attr);
		return -EBUSY;
	}

	FUNC3(&ctx, net, skb, nlh, family, table, NULL, nla);

	return FUNC4(&ctx, obj);
}