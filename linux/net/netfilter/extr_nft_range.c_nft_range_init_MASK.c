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
typedef  int u32 ;
struct nlattr {int dummy; } ;
struct nft_range_expr {int op; scalar_t__ len; int /*<<< orphan*/  data_from; int /*<<< orphan*/  data_to; int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {scalar_t__ len; int /*<<< orphan*/  type; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_RANGE_FROM_DATA ; 
 size_t NFTA_RANGE_OP ; 
 size_t NFTA_RANGE_SREG ; 
 size_t NFTA_RANGE_TO_DATA ; 
#define  NFT_RANGE_EQ 129 
#define  NFT_RANGE_NEQ 128 
 int /*<<< orphan*/  U8_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct nft_data_desc*,struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nft_range_expr* FUNC2 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (struct nlattr const* const,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx, const struct nft_expr *expr,
			const struct nlattr * const tb[])
{
	struct nft_range_expr *priv = FUNC2(expr);
	struct nft_data_desc desc_from, desc_to;
	int err;
	u32 op;

	if (!tb[NFTA_RANGE_SREG]      ||
	    !tb[NFTA_RANGE_OP]	      ||
	    !tb[NFTA_RANGE_FROM_DATA] ||
	    !tb[NFTA_RANGE_TO_DATA])
		return -EINVAL;

	err = FUNC0(NULL, &priv->data_from, sizeof(priv->data_from),
			    &desc_from, tb[NFTA_RANGE_FROM_DATA]);
	if (err < 0)
		return err;

	err = FUNC0(NULL, &priv->data_to, sizeof(priv->data_to),
			    &desc_to, tb[NFTA_RANGE_TO_DATA]);
	if (err < 0)
		goto err1;

	if (desc_from.len != desc_to.len) {
		err = -EINVAL;
		goto err2;
	}

	priv->sreg = FUNC3(tb[NFTA_RANGE_SREG]);
	err = FUNC5(priv->sreg, desc_from.len);
	if (err < 0)
		goto err2;

	err = FUNC4(tb[NFTA_RANGE_OP], U8_MAX, &op);
	if (err < 0)
		goto err2;

	switch (op) {
	case NFT_RANGE_EQ:
	case NFT_RANGE_NEQ:
		break;
	default:
		err = -EINVAL;
		goto err2;
	}

	priv->op  = op;
	priv->len = desc_from.len;
	return 0;
err2:
	FUNC1(&priv->data_to, desc_to.type);
err1:
	FUNC1(&priv->data_from, desc_from.type);
	return err;
}