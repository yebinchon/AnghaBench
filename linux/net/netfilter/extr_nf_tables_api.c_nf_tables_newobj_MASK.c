#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {struct nft_table const* name; struct nft_table const* table; } ;
typedef  struct nft_table {int /*<<< orphan*/  owner; TYPE_2__* ops; TYPE_1__ key; int /*<<< orphan*/  list; int /*<<< orphan*/  use; int /*<<< orphan*/  objects; int /*<<< orphan*/  rhlhead; int /*<<< orphan*/  handle; } const nft_table ;
struct nft_object_type {int /*<<< orphan*/  owner; TYPE_2__* ops; TYPE_1__ key; int /*<<< orphan*/  list; int /*<<< orphan*/  use; int /*<<< orphan*/  objects; int /*<<< orphan*/  rhlhead; int /*<<< orphan*/  handle; } ;
typedef  struct nft_object {int /*<<< orphan*/  owner; TYPE_2__* ops; TYPE_1__ key; int /*<<< orphan*/  list; int /*<<< orphan*/  use; int /*<<< orphan*/  objects; int /*<<< orphan*/  rhlhead; int /*<<< orphan*/  handle; } const nft_object ;
struct nft_ctx {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct nft_ctx*,struct nft_table const*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nft_table const*) ; 
 size_t NFTA_OBJ_DATA ; 
 size_t NFTA_OBJ_NAME ; 
 size_t NFTA_OBJ_TABLE ; 
 size_t NFTA_OBJ_TYPE ; 
 int /*<<< orphan*/  NFT_MSG_NEWOBJ ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,struct nlattr const* const) ; 
 int FUNC3 (struct nft_table const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_table const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_table const*) ; 
 int FUNC8 (struct nft_ctx*,struct nft_table const*,struct nlattr const* const,struct nft_table const*) ; 
 int /*<<< orphan*/  FUNC9 (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,int,struct nft_table const*,int /*<<< orphan*/ *,struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 
 struct nft_table* FUNC11 (struct nft_ctx*,struct nft_table const*,struct nlattr const* const) ; 
 struct nft_table* FUNC12 (struct net*,struct nft_table const*,struct nlattr const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_table* FUNC13 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nft_objname_ht ; 
 int /*<<< orphan*/  nft_objname_ht_params ; 
 struct nft_table* FUNC14 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct nft_ctx*,int /*<<< orphan*/ ,struct nft_table const*) ; 
 int /*<<< orphan*/  FUNC16 (struct nlattr const* const) ; 
 struct nft_table const* FUNC17 (struct nlattr const* const,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC18 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct nft_ctx*,struct nft_table const*) ; 

__attribute__((used)) static int FUNC22(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC18(nlh);
	const struct nft_object_type *type;
	u8 genmask = FUNC10(net);
	int family = nfmsg->nfgen_family;
	struct nft_table *table;
	struct nft_object *obj;
	struct nft_ctx ctx;
	u32 objtype;
	int err;

	if (!nla[NFTA_OBJ_TYPE] ||
	    !nla[NFTA_OBJ_NAME] ||
	    !nla[NFTA_OBJ_DATA])
		return -EINVAL;

	table = FUNC14(net, nla[NFTA_OBJ_TABLE], family, genmask);
	if (FUNC1(table)) {
		FUNC2(extack, nla[NFTA_OBJ_TABLE]);
		return FUNC3(table);
	}

	objtype = FUNC19(FUNC16(nla[NFTA_OBJ_TYPE]));
	obj = FUNC12(net, table, nla[NFTA_OBJ_NAME], objtype, genmask);
	if (FUNC1(obj)) {
		err = FUNC3(obj);
		if (err != -ENOENT) {
			FUNC2(extack, nla[NFTA_OBJ_NAME]);
			return err;
		}
	} else {
		if (nlh->nlmsg_flags & NLM_F_EXCL) {
			FUNC2(extack, nla[NFTA_OBJ_NAME]);
			return -EEXIST;
		}
		if (nlh->nlmsg_flags & NLM_F_REPLACE)
			return -EOPNOTSUPP;

		type = FUNC13(net, objtype);
		FUNC9(&ctx, net, skb, nlh, family, table, NULL, nla);

		return FUNC8(&ctx, type, nla[NFTA_OBJ_DATA], obj);
	}

	FUNC9(&ctx, net, skb, nlh, family, table, NULL, nla);

	type = FUNC13(net, objtype);
	if (FUNC1(type))
		return FUNC3(type);

	obj = FUNC11(&ctx, type, nla[NFTA_OBJ_DATA]);
	if (FUNC1(obj)) {
		err = FUNC3(obj);
		goto err1;
	}
	obj->key.table = table;
	obj->handle = FUNC7(table);

	obj->key.name = FUNC17(nla[NFTA_OBJ_NAME], GFP_KERNEL);
	if (!obj->key.name) {
		err = -ENOMEM;
		goto err2;
	}

	err = FUNC15(&ctx, NFT_MSG_NEWOBJ, obj);
	if (err < 0)
		goto err3;

	err = FUNC20(&nft_objname_ht, &obj->rhlhead,
			      nft_objname_ht_params);
	if (err < 0)
		goto err4;

	FUNC5(&obj->list, &table->objects);
	table->use++;
	return 0;
err4:
	/* queued in transaction log */
	FUNC0(&obj->list);
	return err;
err3:
	FUNC4(obj->key.name);
err2:
	if (obj->ops->destroy)
		obj->ops->destroy(&ctx, obj);
	FUNC4(obj);
err1:
	FUNC6(type->owner);
	return err;
}