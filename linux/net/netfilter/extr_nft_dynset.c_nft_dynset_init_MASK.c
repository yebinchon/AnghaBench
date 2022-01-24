#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct nlattr {int dummy; } ;
struct nft_set {int flags; scalar_t__ dtype; int size; scalar_t__ timeout; TYPE_3__* ops; int /*<<< orphan*/  dlen; int /*<<< orphan*/  klen; } ;
struct nft_expr {int dummy; } ;
struct nft_dynset {int invert; int op; struct nft_set* expr; struct nft_set* set; int /*<<< orphan*/  binding; scalar_t__ timeout; int /*<<< orphan*/  tmpl; void* sreg_data; void* sreg_key; } ;
struct nft_ctx {int /*<<< orphan*/  table; TYPE_4__* net; } ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_9__ {TYPE_1__ nft; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  (* gc_init ) (struct nft_set*) ;TYPE_2__* type; int /*<<< orphan*/ * update; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct nft_set*) ; 
 size_t NFTA_DYNSET_EXPR ; 
 size_t NFTA_DYNSET_FLAGS ; 
 size_t NFTA_DYNSET_OP ; 
 size_t NFTA_DYNSET_SET_ID ; 
 size_t NFTA_DYNSET_SET_NAME ; 
 size_t NFTA_DYNSET_SREG_DATA ; 
 size_t NFTA_DYNSET_SREG_KEY ; 
 size_t NFTA_DYNSET_TIMEOUT ; 
 scalar_t__ NFT_DATA_VERDICT ; 
 int NFT_DYNSET_F_INV ; 
#define  NFT_DYNSET_OP_ADD 130 
#define  NFT_DYNSET_OP_DELETE 129 
#define  NFT_DYNSET_OP_UPDATE 128 
 int NFT_EXPR_GC ; 
 int NFT_EXPR_STATEFUL ; 
 int NFT_SET_CONSTANT ; 
 int NFT_SET_EVAL ; 
 int /*<<< orphan*/  NFT_SET_EXT_DATA ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPIRATION ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPR ; 
 int /*<<< orphan*/  NFT_SET_EXT_KEY ; 
 int NFT_SET_MAP ; 
 int NFT_SET_TIMEOUT ; 
 int FUNC1 (struct nft_set*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nft_ctx const*,struct nft_set*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nft_ctx const*,struct nft_set*) ; 
 struct nft_set* FUNC7 (struct nft_ctx const*,struct nlattr const* const) ; 
 struct nft_dynset* FUNC8 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 void* FUNC10 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct nft_set* FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,struct nlattr const* const,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 int FUNC15 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC17 (struct nlattr const* const) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nft_set*) ; 

__attribute__((used)) static int FUNC20(const struct nft_ctx *ctx,
			   const struct nft_expr *expr,
			   const struct nlattr * const tb[])
{
	struct nft_dynset *priv = FUNC8(expr);
	u8 genmask = FUNC9(ctx->net);
	struct nft_set *set;
	u64 timeout;
	int err;

	FUNC3(&ctx->net->nft.commit_mutex);

	if (tb[NFTA_DYNSET_SET_NAME] == NULL ||
	    tb[NFTA_DYNSET_OP] == NULL ||
	    tb[NFTA_DYNSET_SREG_KEY] == NULL)
		return -EINVAL;

	if (tb[NFTA_DYNSET_FLAGS]) {
		u32 flags = FUNC18(FUNC16(tb[NFTA_DYNSET_FLAGS]));

		if (flags & ~NFT_DYNSET_F_INV)
			return -EINVAL;
		if (flags & NFT_DYNSET_F_INV)
			priv->invert = true;
	}

	set = FUNC14(ctx->net, ctx->table,
				    tb[NFTA_DYNSET_SET_NAME],
				    tb[NFTA_DYNSET_SET_ID], genmask);
	if (FUNC0(set))
		return FUNC1(set);

	if (set->ops->update == NULL)
		return -EOPNOTSUPP;

	if (set->flags & NFT_SET_CONSTANT)
		return -EBUSY;

	priv->op = FUNC18(FUNC16(tb[NFTA_DYNSET_OP]));
	switch (priv->op) {
	case NFT_DYNSET_OP_ADD:
	case NFT_DYNSET_OP_DELETE:
		break;
	case NFT_DYNSET_OP_UPDATE:
		if (!(set->flags & NFT_SET_TIMEOUT))
			return -EOPNOTSUPP;
		break;
	default:
		return -EOPNOTSUPP;
	}

	timeout = 0;
	if (tb[NFTA_DYNSET_TIMEOUT] != NULL) {
		if (!(set->flags & NFT_SET_TIMEOUT))
			return -EINVAL;
		timeout = FUNC4(FUNC2(FUNC17(
						tb[NFTA_DYNSET_TIMEOUT])));
	}

	priv->sreg_key = FUNC10(tb[NFTA_DYNSET_SREG_KEY]);
	err = FUNC15(priv->sreg_key, set->klen);
	if (err < 0)
		return err;

	if (tb[NFTA_DYNSET_SREG_DATA] != NULL) {
		if (!(set->flags & NFT_SET_MAP))
			return -EINVAL;
		if (set->dtype == NFT_DATA_VERDICT)
			return -EOPNOTSUPP;

		priv->sreg_data = FUNC10(tb[NFTA_DYNSET_SREG_DATA]);
		err = FUNC15(priv->sreg_data, set->dlen);
		if (err < 0)
			return err;
	} else if (set->flags & NFT_SET_MAP)
		return -EINVAL;

	if (tb[NFTA_DYNSET_EXPR] != NULL) {
		if (!(set->flags & NFT_SET_EVAL))
			return -EINVAL;

		priv->expr = FUNC7(ctx, tb[NFTA_DYNSET_EXPR]);
		if (FUNC0(priv->expr))
			return FUNC1(priv->expr);

		err = -EOPNOTSUPP;
		if (!(priv->expr->ops->type->flags & NFT_EXPR_STATEFUL))
			goto err1;

		if (priv->expr->ops->type->flags & NFT_EXPR_GC) {
			if (set->flags & NFT_SET_TIMEOUT)
				goto err1;
			if (!set->ops->gc_init)
				goto err1;
			set->ops->gc_init(set);
		}
	}

	FUNC13(&priv->tmpl);
	FUNC12(&priv->tmpl, NFT_SET_EXT_KEY, set->klen);
	if (set->flags & NFT_SET_MAP)
		FUNC12(&priv->tmpl, NFT_SET_EXT_DATA, set->dlen);
	if (priv->expr != NULL)
		FUNC12(&priv->tmpl, NFT_SET_EXT_EXPR,
				       priv->expr->ops->size);
	if (set->flags & NFT_SET_TIMEOUT) {
		if (timeout || set->timeout)
			FUNC11(&priv->tmpl, NFT_SET_EXT_EXPIRATION);
	}

	priv->timeout = timeout;

	err = FUNC5(ctx, set, &priv->binding);
	if (err < 0)
		goto err1;

	if (set->size == 0)
		set->size = 0xffff;

	priv->set = set;
	return 0;

err1:
	if (priv->expr != NULL)
		FUNC6(ctx, priv->expr);
	return err;
}