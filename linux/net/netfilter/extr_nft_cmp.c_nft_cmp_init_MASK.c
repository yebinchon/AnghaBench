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
struct nft_expr {int dummy; } ;
struct nft_data_desc {int /*<<< orphan*/  len; } ;
struct nft_ctx {int dummy; } ;
struct nft_cmp_expr {int /*<<< orphan*/  len; int /*<<< orphan*/  op; int /*<<< orphan*/  sreg; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 size_t NFTA_CMP_DATA ; 
 size_t NFTA_CMP_OP ; 
 size_t NFTA_CMP_SREG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct nft_data_desc*,struct nlattr const* const) ; 
 struct nft_cmp_expr* FUNC1 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx, const struct nft_expr *expr,
			const struct nlattr * const tb[])
{
	struct nft_cmp_expr *priv = FUNC1(expr);
	struct nft_data_desc desc;
	int err;

	err = FUNC0(NULL, &priv->data, sizeof(priv->data), &desc,
			    tb[NFTA_CMP_DATA]);
	if (err < 0)
		return err;

	priv->sreg = FUNC2(tb[NFTA_CMP_SREG]);
	err = FUNC3(priv->sreg, desc.len);
	if (err < 0)
		return err;

	priv->op  = FUNC5(FUNC4(tb[NFTA_CMP_OP]));
	priv->len = desc.len;
	return 0;
}