#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_meta {size_t dreg; int key; } ;
struct nft_expr {int dummy; } ;
struct net_device {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  NFT_BREAK ; 
#define  NFT_META_BRI_IIFNAME 131 
#define  NFT_META_BRI_IIFPVID 130 
#define  NFT_META_BRI_IIFVPROTO 129 
#define  NFT_META_BRI_OIFNAME 128 
 int /*<<< orphan*/  FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nft_meta* FUNC4 (struct nft_expr const*) ; 
 struct net_device* FUNC5 (struct nft_pktinfo const*) ; 
 struct net_device* FUNC6 (struct net_device const*) ; 
 void FUNC7 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 struct net_device* FUNC8 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const struct nft_expr *expr,
				     struct nft_regs *regs,
				     const struct nft_pktinfo *pkt)
{
	const struct nft_meta *priv = FUNC4(expr);
	const struct net_device *in = FUNC5(pkt), *out = FUNC8(pkt);
	u32 *dest = &regs->data[priv->dreg];
	const struct net_device *br_dev;

	switch (priv->key) {
	case NFT_META_BRI_IIFNAME:
		br_dev = FUNC6(in);
		break;
	case NFT_META_BRI_OIFNAME:
		br_dev = FUNC6(out);
		break;
	case NFT_META_BRI_IIFPVID: {
		u16 p_pvid;

		br_dev = FUNC6(in);
		if (!br_dev || !FUNC0(br_dev))
			goto err;

		FUNC2(in, &p_pvid);
		FUNC9(dest, p_pvid);
		return;
	}
	case NFT_META_BRI_IIFVPROTO: {
		u16 p_proto;

		br_dev = FUNC6(in);
		if (!br_dev || !FUNC0(br_dev))
			goto err;

		FUNC1(br_dev, &p_proto);
		FUNC9(dest, FUNC3(p_proto));
		return;
	}
	default:
		return FUNC7(expr, regs, pkt);
	}

	FUNC10((char *)dest, br_dev ? br_dev->name : "", IFNAMSIZ);
	return;
err:
	regs->verdict.code = NFT_BREAK;
}