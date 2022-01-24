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
struct nft_symhash {int offset; int modulus; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int ERANGE ; 
 size_t NFTA_HASH_DREG ; 
 size_t NFTA_HASH_MODULUS ; 
 size_t NFTA_HASH_OFFSET ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 struct nft_symhash* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			    const struct nft_expr *expr,
			    const struct nlattr * const tb[])
{
	struct nft_symhash *priv = FUNC0(expr);

	if (!tb[NFTA_HASH_DREG]    ||
	    !tb[NFTA_HASH_MODULUS])
		return -EINVAL;

	if (tb[NFTA_HASH_OFFSET])
		priv->offset = FUNC4(FUNC3(tb[NFTA_HASH_OFFSET]));

	priv->dreg = FUNC1(tb[NFTA_HASH_DREG]);

	priv->modulus = FUNC4(FUNC3(tb[NFTA_HASH_MODULUS]));
	if (priv->modulus < 1)
		return -ERANGE;

	if (priv->offset + priv->modulus - 1 < priv->offset)
		return -EOVERFLOW;

	return FUNC2(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, sizeof(u32));
}