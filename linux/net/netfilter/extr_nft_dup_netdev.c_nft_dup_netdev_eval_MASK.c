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
struct nft_pktinfo {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_netdev {size_t sreg_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_pktinfo const*,int) ; 
 struct nft_dup_netdev* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC2(const struct nft_expr *expr,
				struct nft_regs *regs,
				const struct nft_pktinfo *pkt)
{
	struct nft_dup_netdev *priv = FUNC1(expr);
	int oif = regs->data[priv->sreg_dev];

	FUNC0(pkt, oif);
}