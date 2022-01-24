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
struct nft_payload_set {int csum_type; int csum_flags; void* len; int /*<<< orphan*/  sreg; void* csum_offset; void* offset; void* base; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t NFTA_PAYLOAD_BASE ; 
 size_t NFTA_PAYLOAD_CSUM_FLAGS ; 
 size_t NFTA_PAYLOAD_CSUM_OFFSET ; 
 size_t NFTA_PAYLOAD_CSUM_TYPE ; 
 size_t NFTA_PAYLOAD_LEN ; 
 size_t NFTA_PAYLOAD_OFFSET ; 
 size_t NFTA_PAYLOAD_SREG ; 
#define  NFT_PAYLOAD_CSUM_INET 129 
#define  NFT_PAYLOAD_CSUM_NONE 128 
 int NFT_PAYLOAD_L4CSUM_PSEUDOHDR ; 
 struct nft_payload_set* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
				const struct nft_expr *expr,
				const struct nlattr * const tb[])
{
	struct nft_payload_set *priv = FUNC0(expr);

	priv->base        = FUNC4(FUNC3(tb[NFTA_PAYLOAD_BASE]));
	priv->offset      = FUNC4(FUNC3(tb[NFTA_PAYLOAD_OFFSET]));
	priv->len         = FUNC4(FUNC3(tb[NFTA_PAYLOAD_LEN]));
	priv->sreg        = FUNC1(tb[NFTA_PAYLOAD_SREG]);

	if (tb[NFTA_PAYLOAD_CSUM_TYPE])
		priv->csum_type =
			FUNC4(FUNC3(tb[NFTA_PAYLOAD_CSUM_TYPE]));
	if (tb[NFTA_PAYLOAD_CSUM_OFFSET])
		priv->csum_offset =
			FUNC4(FUNC3(tb[NFTA_PAYLOAD_CSUM_OFFSET]));
	if (tb[NFTA_PAYLOAD_CSUM_FLAGS]) {
		u32 flags;

		flags = FUNC4(FUNC3(tb[NFTA_PAYLOAD_CSUM_FLAGS]));
		if (flags & ~NFT_PAYLOAD_L4CSUM_PSEUDOHDR)
			return -EINVAL;

		priv->csum_flags = flags;
	}

	switch (priv->csum_type) {
	case NFT_PAYLOAD_CSUM_NONE:
	case NFT_PAYLOAD_CSUM_INET:
		break;
	default:
		return -EOPNOTSUPP;
	}

	return FUNC2(priv->sreg, priv->len);
}