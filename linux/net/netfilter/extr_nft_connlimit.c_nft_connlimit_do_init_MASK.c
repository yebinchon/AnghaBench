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
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct nft_connlimit {int limit; int invert; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t NFTA_CONNLIMIT_COUNT ; 
 size_t NFTA_CONNLIMIT_FLAGS ; 
 int NFT_CONNLIMIT_F_INV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct nft_ctx *ctx,
				 const struct nlattr * const tb[],
				 struct nft_connlimit *priv)
{
	bool invert = false;
	u32 flags, limit;

	if (!tb[NFTA_CONNLIMIT_COUNT])
		return -EINVAL;

	limit = FUNC3(FUNC2(tb[NFTA_CONNLIMIT_COUNT]));

	if (tb[NFTA_CONNLIMIT_FLAGS]) {
		flags = FUNC3(FUNC2(tb[NFTA_CONNLIMIT_FLAGS]));
		if (flags & ~NFT_CONNLIMIT_F_INV)
			return -EOPNOTSUPP;
		if (flags & NFT_CONNLIMIT_F_INV)
			invert = true;
	}

	FUNC0(&priv->list);
	priv->limit	= limit;
	priv->invert	= invert;

	return FUNC1(ctx->net, ctx->family);
}