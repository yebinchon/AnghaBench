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
typedef  int /*<<< orphan*/  uint32_t ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
struct nft_set_elem {void* priv; TYPE_1__ key; } ;
struct nft_set {scalar_t__ klen; TYPE_2__* ops; } ;
struct nft_data_desc {scalar_t__ type; scalar_t__ len; } ;
struct nft_ctx {int /*<<< orphan*/  portid; int /*<<< orphan*/  net; int /*<<< orphan*/  seq; } ;
struct TYPE_4__ {void* (* get ) (int /*<<< orphan*/ ,struct nft_set*,struct nft_set_elem*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 size_t NFTA_SET_ELEM_FLAGS ; 
 size_t NFTA_SET_ELEM_KEY ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_MAX ; 
 scalar_t__ NFT_DATA_VALUE ; 
 int /*<<< orphan*/  NFT_MSG_NEWSETELEM ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,struct nft_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nft_set*,struct nft_set_elem*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nft_ctx*,int /*<<< orphan*/ *,int,struct nft_data_desc*,struct nlattr*) ; 
 int /*<<< orphan*/  nft_set_elem_policy ; 
 int FUNC6 (struct nft_set*,struct nlattr*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,struct nft_set*,struct nft_set_elem*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nft_ctx *ctx, struct nft_set *set,
			    const struct nlattr *attr)
{
	struct nlattr *nla[NFTA_SET_ELEM_MAX + 1];
	struct nft_data_desc desc;
	struct nft_set_elem elem;
	struct sk_buff *skb;
	uint32_t flags = 0;
	void *priv;
	int err;

	err = FUNC7(nla, NFTA_SET_ELEM_MAX, attr,
					  nft_set_elem_policy, NULL);
	if (err < 0)
		return err;

	if (!nla[NFTA_SET_ELEM_KEY])
		return -EINVAL;

	err = FUNC6(set, nla[NFTA_SET_ELEM_FLAGS], &flags);
	if (err < 0)
		return err;

	err = FUNC5(ctx, &elem.key.val, sizeof(elem.key), &desc,
			    nla[NFTA_SET_ELEM_KEY]);
	if (err < 0)
		return err;

	err = -EINVAL;
	if (desc.type != NFT_DATA_VALUE || desc.len != set->klen)
		return err;

	priv = set->ops->get(ctx->net, set, &elem, flags);
	if (FUNC0(priv))
		return FUNC1(priv);

	elem.priv = priv;

	err = -ENOMEM;
	skb = FUNC8(NLMSG_GOODSIZE, GFP_ATOMIC);
	if (skb == NULL)
		goto err1;

	err = FUNC3(skb, ctx, ctx->seq, ctx->portid,
					  NFT_MSG_NEWSETELEM, 0, set, &elem);
	if (err < 0)
		goto err2;

	err = FUNC4(skb, ctx->net, ctx->portid, MSG_DONTWAIT);
	/* This avoids a loop in nfnetlink. */
	if (err < 0)
		goto err1;

	return 0;
err2:
	FUNC2(skb);
err1:
	/* this avoids a loop in nfnetlink. */
	return err == -EAGAIN ? -ENOBUFS : err;
}