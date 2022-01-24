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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nft_meta {int key; int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t NFTA_META_KEY ; 
 size_t NFTA_META_SREG ; 
#define  NFT_META_MARK 132 
#define  NFT_META_NFTRACE 131 
#define  NFT_META_PKTTYPE 130 
#define  NFT_META_PRIORITY 129 
#define  NFT_META_SECMARK 128 
 struct nft_meta* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int /*<<< orphan*/  nft_trace_enabled ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(const struct nft_ctx *ctx,
		      const struct nft_expr *expr,
		      const struct nlattr * const tb[])
{
	struct nft_meta *priv = FUNC0(expr);
	unsigned int len;
	int err;

	priv->key = FUNC4(FUNC3(tb[NFTA_META_KEY]));
	switch (priv->key) {
	case NFT_META_MARK:
	case NFT_META_PRIORITY:
#ifdef CONFIG_NETWORK_SECMARK
	case NFT_META_SECMARK:
#endif
		len = sizeof(u32);
		break;
	case NFT_META_NFTRACE:
		len = sizeof(u8);
		break;
	case NFT_META_PKTTYPE:
		len = sizeof(u8);
		break;
	default:
		return -EOPNOTSUPP;
	}

	priv->sreg = FUNC1(tb[NFTA_META_SREG]);
	err = FUNC2(priv->sreg, len);
	if (err < 0)
		return err;

	if (priv->key == NFT_META_NFTRACE)
		FUNC5(&nft_trace_enabled);

	return 0;
}