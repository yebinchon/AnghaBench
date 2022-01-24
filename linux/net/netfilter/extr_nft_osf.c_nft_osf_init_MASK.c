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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nft_osf {int ttl; int /*<<< orphan*/  dreg; scalar_t__ flags; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_OSF_DREG ; 
 size_t NFTA_OSF_FLAGS ; 
 size_t NFTA_OSF_TTL ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 scalar_t__ NFT_OSF_F_VERSION ; 
 int /*<<< orphan*/  NFT_OSF_MAXGENRELEN ; 
 struct nft_osf* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (struct nlattr const* const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx,
			const struct nft_expr *expr,
			const struct nlattr * const tb[])
{
	struct nft_osf *priv = FUNC0(expr);
	u32 flags;
	int err;
	u8 ttl;

	if (tb[NFTA_OSF_TTL]) {
		ttl = FUNC4(tb[NFTA_OSF_TTL]);
		if (ttl > 2)
			return -EINVAL;
		priv->ttl = ttl;
	}

	if (tb[NFTA_OSF_FLAGS]) {
		flags = FUNC5(FUNC3(tb[NFTA_OSF_FLAGS]));
		if (flags != NFT_OSF_F_VERSION)
			return -EINVAL;
		priv->flags = flags;
	}

	priv->dreg = FUNC1(tb[NFTA_OSF_DREG]);
	err = FUNC2(ctx, priv->dreg, NULL,
					  NFT_DATA_VALUE, NFT_OSF_MAXGENRELEN);
	if (err < 0)
		return err;

	return 0;
}