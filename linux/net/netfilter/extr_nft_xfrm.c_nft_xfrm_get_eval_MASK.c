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
struct nft_xfrm {int dir; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  XFRM_POLICY_IN 129 
#define  XFRM_POLICY_OUT 128 
 struct nft_xfrm* FUNC1 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_xfrm const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_xfrm const*,struct nft_regs*,struct nft_pktinfo const*) ; 

__attribute__((used)) static void FUNC4(const struct nft_expr *expr,
			      struct nft_regs *regs,
			      const struct nft_pktinfo *pkt)
{
	const struct nft_xfrm *priv = FUNC1(expr);

	switch (priv->dir) {
	case XFRM_POLICY_IN:
		FUNC2(priv, regs, pkt);
		break;
	case XFRM_POLICY_OUT:
		FUNC3(priv, regs, pkt);
		break;
	default:
		FUNC0(1);
		regs->verdict.code = NFT_BREAK;
		break;
	}
}