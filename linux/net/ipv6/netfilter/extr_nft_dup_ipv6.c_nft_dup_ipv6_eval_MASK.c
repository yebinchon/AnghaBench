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
struct nft_regs {int* data; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_ipv6 {size_t sreg_addr; int sreg_dev; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_addr*,int) ; 
 struct nft_dup_ipv6* FUNC1 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_pktinfo const*) ; 

__attribute__((used)) static void FUNC4(const struct nft_expr *expr,
			      struct nft_regs *regs,
			      const struct nft_pktinfo *pkt)
{
	struct nft_dup_ipv6 *priv = FUNC1(expr);
	struct in6_addr *gw = (struct in6_addr *)&regs->data[priv->sreg_addr];
	int oif = priv->sreg_dev ? regs->data[priv->sreg_dev] : -1;

	FUNC0(FUNC3(pkt), pkt->skb, FUNC2(pkt), gw, oif);
}