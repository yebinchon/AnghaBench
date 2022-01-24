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
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct nft_rt {int key; int /*<<< orphan*/  dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t NFTA_RT_DREG ; 
 size_t NFTA_RT_KEY ; 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
#define  NFT_RT_CLASSID 132 
#define  NFT_RT_NEXTHOP4 131 
#define  NFT_RT_NEXTHOP6 130 
#define  NFT_RT_TCPMSS 129 
#define  NFT_RT_XFRM 128 
 struct nft_rt* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nft_ctx const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			   const struct nft_expr *expr,
			   const struct nlattr * const tb[])
{
	struct nft_rt *priv = FUNC0(expr);
	unsigned int len;

	if (tb[NFTA_RT_KEY] == NULL ||
	    tb[NFTA_RT_DREG] == NULL)
		return -EINVAL;

	priv->key = FUNC4(FUNC3(tb[NFTA_RT_KEY]));
	switch (priv->key) {
#ifdef CONFIG_IP_ROUTE_CLASSID
	case NFT_RT_CLASSID:
#endif
	case NFT_RT_NEXTHOP4:
		len = sizeof(u32);
		break;
	case NFT_RT_NEXTHOP6:
		len = sizeof(struct in6_addr);
		break;
	case NFT_RT_TCPMSS:
		len = sizeof(u16);
		break;
#ifdef CONFIG_XFRM
	case NFT_RT_XFRM:
		len = sizeof(u8);
		break;
#endif
	default:
		return -EOPNOTSUPP;
	}

	priv->dreg = FUNC1(tb[NFTA_RT_DREG]);
	return FUNC2(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, len);
}