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
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct nft_meta {int key; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int IFNAMSIZ ; 
 size_t NFTA_META_DREG ; 
 size_t NFTA_META_KEY ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
#define  NFT_META_BRI_IIFNAME 131 
#define  NFT_META_BRI_IIFPVID 130 
#define  NFT_META_BRI_IIFVPROTO 129 
#define  NFT_META_BRI_OIFNAME 128 
 struct nft_meta* FUNC0 (struct nft_expr const*) ; 
 int FUNC1 (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int FUNC3 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const* const) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx,
				    const struct nft_expr *expr,
				    const struct nlattr * const tb[])
{
	struct nft_meta *priv = FUNC0(expr);
	unsigned int len;

	priv->key = FUNC5(FUNC4(tb[NFTA_META_KEY]));
	switch (priv->key) {
	case NFT_META_BRI_IIFNAME:
	case NFT_META_BRI_OIFNAME:
		len = IFNAMSIZ;
		break;
	case NFT_META_BRI_IIFPVID:
	case NFT_META_BRI_IIFVPROTO:
		len = sizeof(u16);
		break;
	default:
		return FUNC1(ctx, expr, tb);
	}

	priv->dreg = FUNC2(tb[NFTA_META_DREG]);
	return FUNC3(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, len);
}