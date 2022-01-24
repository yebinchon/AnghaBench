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
struct nlattr {int dummy; } ;
struct nft_immediate_expr {int /*<<< orphan*/  data; int /*<<< orphan*/  dreg; int /*<<< orphan*/  dlen; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_IMMEDIATE_DATA ; 
 size_t NFTA_IMMEDIATE_DREG ; 
 int FUNC0 (struct nft_ctx const*,int /*<<< orphan*/ *,int,struct nft_data_desc*,struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nft_immediate_expr* FUNC2 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			      const struct nft_expr *expr,
			      const struct nlattr * const tb[])
{
	struct nft_immediate_expr *priv = FUNC2(expr);
	struct nft_data_desc desc;
	int err;

	if (tb[NFTA_IMMEDIATE_DREG] == NULL ||
	    tb[NFTA_IMMEDIATE_DATA] == NULL)
		return -EINVAL;

	err = FUNC0(ctx, &priv->data, sizeof(priv->data), &desc,
			    tb[NFTA_IMMEDIATE_DATA]);
	if (err < 0)
		return err;

	priv->dlen = desc.len;

	priv->dreg = FUNC3(tb[NFTA_IMMEDIATE_DREG]);
	err = FUNC4(ctx, priv->dreg, &priv->data,
					  desc.type, desc.len);
	if (err < 0)
		goto err1;

	return 0;

err1:
	FUNC1(&priv->data, desc.type);
	return err;
}