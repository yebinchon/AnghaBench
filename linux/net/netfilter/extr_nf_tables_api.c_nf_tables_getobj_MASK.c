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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct nft_table {int dummy; } ;
typedef  struct nft_table const nft_object ;
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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t NFTA_OBJ_NAME ; 
 size_t NFTA_OBJ_TABLE ; 
 size_t NFTA_OBJ_TYPE ; 
 scalar_t__ NFT_MSG_GETOBJ_RESET ; 
 int /*<<< orphan*/  NFT_MSG_NEWOBJ ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,struct nlattr const* const) ; 
 int FUNC4 (struct nft_table const*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  nf_tables_dump_obj ; 
 int /*<<< orphan*/  nf_tables_dump_obj_done ; 
 int /*<<< orphan*/  nf_tables_dump_obj_start ; 
 int FUNC7 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nft_table const*,struct nft_table const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int FUNC9 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nft_table* FUNC10 (struct net*,struct nft_table const*,struct nlattr const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_table* FUNC11 (struct net*,struct nlattr const* const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC13 (struct nlmsghdr const*) ; 
 int FUNC14 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net *net, struct sock *nlsk,
			    struct sk_buff *skb, const struct nlmsghdr *nlh,
			    const struct nlattr * const nla[],
			    struct netlink_ext_ack *extack)
{
	const struct nfgenmsg *nfmsg = FUNC13(nlh);
	u8 genmask = FUNC8(net);
	int family = nfmsg->nfgen_family;
	const struct nft_table *table;
	struct nft_object *obj;
	struct sk_buff *skb2;
	bool reset = false;
	u32 objtype;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.start = nf_tables_dump_obj_start,
			.dump = nf_tables_dump_obj,
			.done = nf_tables_dump_obj_done,
			.module = THIS_MODULE,
			.data = (void *)nla,
		};

		return FUNC9(nlsk, skb, nlh, &c);
	}

	if (!nla[NFTA_OBJ_NAME] ||
	    !nla[NFTA_OBJ_TYPE])
		return -EINVAL;

	table = FUNC11(net, nla[NFTA_OBJ_TABLE], family, genmask);
	if (FUNC0(table)) {
		FUNC3(extack, nla[NFTA_OBJ_TABLE]);
		return FUNC4(table);
	}

	objtype = FUNC15(FUNC12(nla[NFTA_OBJ_TYPE]));
	obj = FUNC10(net, table, nla[NFTA_OBJ_NAME], objtype, genmask);
	if (FUNC0(obj)) {
		FUNC3(extack, nla[NFTA_OBJ_NAME]);
		return FUNC4(obj);
	}

	skb2 = FUNC5(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (!skb2)
		return -ENOMEM;

	if (FUNC2(nlh->nlmsg_type) == NFT_MSG_GETOBJ_RESET)
		reset = true;

	err = FUNC7(skb2, net, FUNC1(skb).portid,
				      nlh->nlmsg_seq, NFT_MSG_NEWOBJ, 0,
				      family, table, obj, reset);
	if (err < 0)
		goto err;

	return FUNC14(nlsk, skb2, FUNC1(skb).portid);
err:
	FUNC6(skb2);
	return err;
}