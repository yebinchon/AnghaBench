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
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_fib {int /*<<< orphan*/  result; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
#define  NFPROTO_IPV4 132 
#define  NFPROTO_IPV6 131 
#define  NFT_FIB_RESULT_ADDRTYPE 130 
#define  NFT_FIB_RESULT_OIF 129 
#define  NFT_FIB_RESULT_OIFNAME 128 
 int /*<<< orphan*/  NF_DROP ; 
 struct nft_fib* FUNC0 (struct nft_expr const*) ; 
 void FUNC1 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC2 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC3 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 void FUNC4 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 
 int FUNC5 (struct nft_pktinfo const*) ; 

__attribute__((used)) static void FUNC6(const struct nft_expr *expr,
			      struct nft_regs *regs,
			      const struct nft_pktinfo *pkt)
{
	const struct nft_fib *priv = FUNC0(expr);

	switch (FUNC5(pkt)) {
	case NFPROTO_IPV4:
		switch (priv->result) {
		case NFT_FIB_RESULT_OIF:
		case NFT_FIB_RESULT_OIFNAME:
			return FUNC1(expr, regs, pkt);
		case NFT_FIB_RESULT_ADDRTYPE:
			return FUNC2(expr, regs, pkt);
		}
		break;
	case NFPROTO_IPV6:
		switch (priv->result) {
		case NFT_FIB_RESULT_OIF:
		case NFT_FIB_RESULT_OIFNAME:
			return FUNC3(expr, regs, pkt);
		case NFT_FIB_RESULT_ADDRTYPE:
			return FUNC4(expr, regs, pkt);
		}
		break;
	}

	regs->verdict.code = NF_DROP;
}