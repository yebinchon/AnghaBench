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
struct nlattr {int dummy; } ;
struct nft_set {int flags; int /*<<< orphan*/  dlen; int /*<<< orphan*/  dtype; int /*<<< orphan*/  klen; } ;
struct TYPE_2__ {int flags; } ;
struct nft_lookup {int invert; struct nft_set* set; TYPE_1__ binding; void* dreg; void* sreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  table; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nft_set*) ; 
 size_t NFTA_LOOKUP_DREG ; 
 size_t NFTA_LOOKUP_FLAGS ; 
 size_t NFTA_LOOKUP_SET ; 
 size_t NFTA_LOOKUP_SET_ID ; 
 size_t NFTA_LOOKUP_SREG ; 
 int NFT_LOOKUP_F_INV ; 
 int NFT_SET_MAP ; 
 int FUNC1 (struct nft_set*) ; 
 int FUNC2 (struct nft_ctx const*,struct nft_set*,TYPE_1__*) ; 
 struct nft_lookup* FUNC3 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct nlattr const* const) ; 
 struct nft_set* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr const* const,struct nlattr const* const,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nft_ctx const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr const* const) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct nft_ctx *ctx,
			   const struct nft_expr *expr,
			   const struct nlattr * const tb[])
{
	struct nft_lookup *priv = FUNC3(expr);
	u8 genmask = FUNC4(ctx->net);
	struct nft_set *set;
	u32 flags;
	int err;

	if (tb[NFTA_LOOKUP_SET] == NULL ||
	    tb[NFTA_LOOKUP_SREG] == NULL)
		return -EINVAL;

	set = FUNC6(ctx->net, ctx->table, tb[NFTA_LOOKUP_SET],
				    tb[NFTA_LOOKUP_SET_ID], genmask);
	if (FUNC0(set))
		return FUNC1(set);

	priv->sreg = FUNC5(tb[NFTA_LOOKUP_SREG]);
	err = FUNC7(priv->sreg, set->klen);
	if (err < 0)
		return err;

	if (tb[NFTA_LOOKUP_FLAGS]) {
		flags = FUNC10(FUNC9(tb[NFTA_LOOKUP_FLAGS]));

		if (flags & ~NFT_LOOKUP_F_INV)
			return -EINVAL;

		if (flags & NFT_LOOKUP_F_INV) {
			if (set->flags & NFT_SET_MAP)
				return -EINVAL;
			priv->invert = true;
		}
	}

	if (tb[NFTA_LOOKUP_DREG] != NULL) {
		if (priv->invert)
			return -EINVAL;
		if (!(set->flags & NFT_SET_MAP))
			return -EINVAL;

		priv->dreg = FUNC5(tb[NFTA_LOOKUP_DREG]);
		err = FUNC8(ctx, priv->dreg, NULL,
						  set->dtype, set->dlen);
		if (err < 0)
			return err;
	} else if (set->flags & NFT_SET_MAP)
		return -EINVAL;

	priv->binding.flags = set->flags & NFT_SET_MAP;

	err = FUNC2(ctx, set, &priv->binding);
	if (err < 0)
		return err;

	priv->set = set;
	return 0;
}