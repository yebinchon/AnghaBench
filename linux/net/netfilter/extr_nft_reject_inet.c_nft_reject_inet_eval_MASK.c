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
struct nft_reject {int /*<<< orphan*/  icmp_code; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
#define  NFPROTO_IPV4 132 
#define  NFPROTO_IPV6 131 
#define  NFT_REJECT_ICMPX_UNREACH 130 
#define  NFT_REJECT_ICMP_UNREACH 129 
#define  NFT_REJECT_TCP_RST 128 
 int /*<<< orphan*/  NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_reject* FUNC4 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nft_pktinfo const*) ; 
 int FUNC7 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct nft_expr *expr,
				 struct nft_regs *regs,
				 const struct nft_pktinfo *pkt)
{
	struct nft_reject *priv = FUNC4(expr);

	switch (FUNC7(pkt)) {
	case NFPROTO_IPV4:
		switch (priv->type) {
		case NFT_REJECT_ICMP_UNREACH:
			FUNC2(pkt->skb, priv->icmp_code,
					FUNC5(pkt));
			break;
		case NFT_REJECT_TCP_RST:
			FUNC0(FUNC6(pkt), pkt->skb, FUNC5(pkt));
			break;
		case NFT_REJECT_ICMPX_UNREACH:
			FUNC2(pkt->skb,
					FUNC8(priv->icmp_code),
					FUNC5(pkt));
			break;
		}
		break;
	case NFPROTO_IPV6:
		switch (priv->type) {
		case NFT_REJECT_ICMP_UNREACH:
			FUNC3(FUNC6(pkt), pkt->skb,
					 priv->icmp_code, FUNC5(pkt));
			break;
		case NFT_REJECT_TCP_RST:
			FUNC1(FUNC6(pkt), pkt->skb, FUNC5(pkt));
			break;
		case NFT_REJECT_ICMPX_UNREACH:
			FUNC3(FUNC6(pkt), pkt->skb,
					 FUNC9(priv->icmp_code),
					 FUNC5(pkt));
			break;
		}
		break;
	}

	regs->verdict.code = NF_DROP;
}