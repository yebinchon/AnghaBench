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
struct nft_payload {void* len; int /*<<< orphan*/  dreg; void* offset; void* base; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 size_t NFTA_PAYLOAD_BASE ; 
 size_t NFTA_PAYLOAD_DREG ; 
 size_t NFTA_PAYLOAD_LEN ; 
 size_t NFTA_PAYLOAD_OFFSET ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 struct nft_payload* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			    const struct nft_expr *expr,
			    const struct nlattr * const tb[])
{
	struct nft_payload *priv = FUNC0(expr);

	priv->base   = FUNC4(FUNC3(tb[NFTA_PAYLOAD_BASE]));
	priv->offset = FUNC4(FUNC3(tb[NFTA_PAYLOAD_OFFSET]));
	priv->len    = FUNC4(FUNC3(tb[NFTA_PAYLOAD_LEN]));
	priv->dreg   = FUNC1(tb[NFTA_PAYLOAD_DREG]);

	return FUNC2(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, priv->len);
}