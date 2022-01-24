#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_set {int flags; int ktype; int klen; int dtype; int dlen; int objtype; int gc_int; scalar_t__ policy; int size; int /*<<< orphan*/  udata; int /*<<< orphan*/  udlen; scalar_t__ timeout; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;
struct nft_ctx {TYPE_3__* table; TYPE_2__* net; int /*<<< orphan*/  family; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct nfgenmsg {int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int base_seq; } ;
struct TYPE_5__ {TYPE_1__ nft; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFTABLES ; 
 int /*<<< orphan*/  NFTA_SET_DATA_LEN ; 
 int /*<<< orphan*/  NFTA_SET_DATA_TYPE ; 
 int /*<<< orphan*/  NFTA_SET_DESC ; 
 int /*<<< orphan*/  NFTA_SET_DESC_SIZE ; 
 int /*<<< orphan*/  NFTA_SET_FLAGS ; 
 int /*<<< orphan*/  NFTA_SET_GC_INTERVAL ; 
 int /*<<< orphan*/  NFTA_SET_HANDLE ; 
 int /*<<< orphan*/  NFTA_SET_KEY_LEN ; 
 int /*<<< orphan*/  NFTA_SET_KEY_TYPE ; 
 int /*<<< orphan*/  NFTA_SET_NAME ; 
 int /*<<< orphan*/  NFTA_SET_OBJ_TYPE ; 
 int /*<<< orphan*/  NFTA_SET_PAD ; 
 int /*<<< orphan*/  NFTA_SET_POLICY ; 
 int /*<<< orphan*/  NFTA_SET_TABLE ; 
 int /*<<< orphan*/  NFTA_SET_TIMEOUT ; 
 int /*<<< orphan*/  NFTA_SET_USERDATA ; 
 int NFT_SET_MAP ; 
 int NFT_SET_OBJECT ; 
 scalar_t__ NFT_SET_POL_PERFORMANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfgenmsg* FUNC11 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct nlmsghdr*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, const struct nft_ctx *ctx,
			      const struct nft_set *set, u16 event, u16 flags)
{
	struct nfgenmsg *nfmsg;
	struct nlmsghdr *nlh;
	struct nlattr *desc;
	u32 portid = ctx->portid;
	u32 seq = ctx->seq;

	event = FUNC4(NFNL_SUBSYS_NFTABLES, event);
	nlh = FUNC13(skb, portid, seq, event, sizeof(struct nfgenmsg),
			flags);
	if (nlh == NULL)
		goto nla_put_failure;

	nfmsg = FUNC11(nlh);
	nfmsg->nfgen_family	= ctx->family;
	nfmsg->version		= NFNETLINK_V0;
	nfmsg->res_id		= FUNC2(ctx->net->nft.base_seq & 0xffff);

	if (FUNC10(skb, NFTA_SET_TABLE, ctx->table->name))
		goto nla_put_failure;
	if (FUNC10(skb, NFTA_SET_NAME, set->name))
		goto nla_put_failure;
	if (FUNC9(skb, NFTA_SET_HANDLE, FUNC0(set->handle),
			 NFTA_SET_PAD))
		goto nla_put_failure;
	if (set->flags != 0)
		if (FUNC8(skb, NFTA_SET_FLAGS, FUNC1(set->flags)))
			goto nla_put_failure;

	if (FUNC8(skb, NFTA_SET_KEY_TYPE, FUNC1(set->ktype)))
		goto nla_put_failure;
	if (FUNC8(skb, NFTA_SET_KEY_LEN, FUNC1(set->klen)))
		goto nla_put_failure;
	if (set->flags & NFT_SET_MAP) {
		if (FUNC8(skb, NFTA_SET_DATA_TYPE, FUNC1(set->dtype)))
			goto nla_put_failure;
		if (FUNC8(skb, NFTA_SET_DATA_LEN, FUNC1(set->dlen)))
			goto nla_put_failure;
	}
	if (set->flags & NFT_SET_OBJECT &&
	    FUNC8(skb, NFTA_SET_OBJ_TYPE, FUNC1(set->objtype)))
		goto nla_put_failure;

	if (set->timeout &&
	    FUNC9(skb, NFTA_SET_TIMEOUT,
			 FUNC3(set->timeout),
			 NFTA_SET_PAD))
		goto nla_put_failure;
	if (set->gc_int &&
	    FUNC8(skb, NFTA_SET_GC_INTERVAL, FUNC1(set->gc_int)))
		goto nla_put_failure;

	if (set->policy != NFT_SET_POL_PERFORMANCE) {
		if (FUNC8(skb, NFTA_SET_POLICY, FUNC1(set->policy)))
			goto nla_put_failure;
	}

	if (FUNC7(skb, NFTA_SET_USERDATA, set->udlen, set->udata))
		goto nla_put_failure;

	desc = FUNC6(skb, NFTA_SET_DESC);
	if (desc == NULL)
		goto nla_put_failure;
	if (set->size &&
	    FUNC8(skb, NFTA_SET_DESC_SIZE, FUNC1(set->size)))
		goto nla_put_failure;
	FUNC5(skb, desc);

	FUNC12(skb, nlh);
	return 0;

nla_put_failure:
	FUNC14(skb, nlh);
	return -1;
}