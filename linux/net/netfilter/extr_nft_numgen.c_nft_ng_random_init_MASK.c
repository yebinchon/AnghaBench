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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nft_ng_random {int offset; int modulus; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int ERANGE ; 
 size_t NFTA_NG_DREG ; 
 size_t NFTA_NG_MODULUS ; 
 size_t NFTA_NG_OFFSET ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 struct nft_ng_random* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  nft_numgen_prandom_state ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx,
			      const struct nft_expr *expr,
			      const struct nlattr * const tb[])
{
	struct nft_ng_random *priv = FUNC0(expr);

	if (tb[NFTA_NG_OFFSET])
		priv->offset = FUNC4(FUNC3(tb[NFTA_NG_OFFSET]));

	priv->modulus = FUNC4(FUNC3(tb[NFTA_NG_MODULUS]));
	if (priv->modulus == 0)
		return -ERANGE;

	if (priv->offset + priv->modulus - 1 < priv->offset)
		return -EOVERFLOW;

	FUNC5(&nft_numgen_prandom_state);

	priv->dreg = FUNC1(tb[NFTA_NG_DREG]);

	return FUNC2(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, sizeof(u32));
}