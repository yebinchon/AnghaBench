#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_2__ verdict; } ;
struct nft_pktinfo {TYPE_1__* skb; } ;
struct nft_fib {int /*<<< orphan*/  result; } ;
struct nft_expr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
#define  ETH_P_IP 132 
#define  ETH_P_IPV6 131 
 int /*<<< orphan*/  NFT_BREAK ; 
#define  NFT_FIB_RESULT_ADDRTYPE 130 
#define  NFT_FIB_RESULT_OIF 129 
#define  NFT_FIB_RESULT_OIFNAME 128 
 int /*<<< orphan*/  FUNC0 () ; 
 struct nft_fib* FUNC1 (struct nft_expr const*) ; 
 void FUNC2 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC3 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC4 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC5 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct nft_expr *expr,
				struct nft_regs *regs,
				const struct nft_pktinfo *pkt)
{
	const struct nft_fib *priv = FUNC1(expr);

	switch (FUNC6(pkt->skb->protocol)) {
	case ETH_P_IP:
		switch (priv->result) {
		case NFT_FIB_RESULT_OIF:
		case NFT_FIB_RESULT_OIFNAME:
			return FUNC2(expr, regs, pkt);
		case NFT_FIB_RESULT_ADDRTYPE:
			return FUNC3(expr, regs, pkt);
		}
		break;
	case ETH_P_IPV6:
		if (!FUNC0())
			break;
		switch (priv->result) {
		case NFT_FIB_RESULT_OIF:
		case NFT_FIB_RESULT_OIFNAME:
			return FUNC4(expr, regs, pkt);
		case NFT_FIB_RESULT_ADDRTYPE:
			return FUNC5(expr, regs, pkt);
		}
		break;
	}

	regs->verdict.code = NFT_BREAK;
}