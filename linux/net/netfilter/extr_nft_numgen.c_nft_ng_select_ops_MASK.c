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
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct nft_expr_ops const* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NFTA_NG_DREG ; 
 size_t NFTA_NG_MODULUS ; 
 size_t NFTA_NG_TYPE ; 
#define  NFT_NG_INCREMENTAL 129 
#define  NFT_NG_RANDOM 128 
 struct nft_expr_ops const nft_ng_inc_ops ; 
 struct nft_expr_ops const nft_ng_random_ops ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct nft_expr_ops *
FUNC3(const struct nft_ctx *ctx, const struct nlattr * const tb[])
{
	u32 type;

	if (!tb[NFTA_NG_DREG]	 ||
	    !tb[NFTA_NG_MODULUS] ||
	    !tb[NFTA_NG_TYPE])
		return FUNC0(-EINVAL);

	type = FUNC2(FUNC1(tb[NFTA_NG_TYPE]));

	switch (type) {
	case NFT_NG_INCREMENTAL:
		return &nft_ng_inc_ops;
	case NFT_NG_RANDOM:
		return &nft_ng_random_ops;
	}

	return FUNC0(-EINVAL);
}